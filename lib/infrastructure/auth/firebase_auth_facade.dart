import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:splited/domain/auth/accountTypes.dart';
import 'package:splited/domain/auth/auth_failure.dart';
import 'package:splited/domain/auth/i_auth_facade.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/password.dart';
import 'package:http/http.dart' as http;
import 'package:splited/domain/auth/value_objects/password_change_code.dart';
import 'package:splited/infrastructure/auth/model/firebase_auth_credentials.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade extends IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookLogin _facebookLogin;

  FirebaseAuthFacade(
      this._firebaseAuth, this._googleSignIn, this._facebookLogin);
  @override
  Future<Either<AuthFailure, Unit>> registerWithLoginAndPassword(
      {EmailAddress email, Password password}) async {
    final _emailAddressStr = email.getOrCrash();
    final _passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: _emailAddressStr, password: _passwordStr);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "ERROR_EMAIL_ALREADY_IN_USE") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    return _logInWithAccountType(accountType: const Facebook());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    return _logInWithAccountType(accountType: const Google());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithLoginAndPassword(
      {EmailAddress email, Password password}) async {
    return _logInWithAccountType(
        accountType: const Standard(), emailAddress: email, password: password);
  }

  @override
  Future<Either<AuthFailure, Unit>> linkAccountWith({
    @required AccountType type,
    EmailAddress email,
    Password password,
  }) async {
    final FirebaseUser firebaseUser = await _firebaseAuth.currentUser();
    Either<AuthFailure, FirebaseAuthCredentials> authCredential;
    type.map(
      standard: (_) async {
        authCredential = await _getLoginCredentials(
            accountType: const Standard(), email: email, password: password);
      },
      google: (_) async {
        authCredential =
            await _getLoginCredentials(accountType: const Google());
      },
      facebook: (_) async {
        authCredential =
            await _getLoginCredentials(accountType: const Facebook());
      },
    );
    return authCredential.fold((l) => left(l), (value) {
      try {
        firebaseUser.linkWithCredential(value.authCredential);
      } on PlatformException catch (_) {
        return left(const AuthFailure.serverError());
      }
      return right(unit);
    });
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword({
    EmailAddress email,
    Password password,
  }) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> checkPasswordCode(
      {PasswordChangeCode code}) {
    // TODO: implement checkPasswordCode
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> remindPassword({EmailAddress email}) {
    // TODO: implement remindPassword
    throw UnimplementedError();
  }

  Future<Either<AuthFailure, FirebaseAuthCredentials>> _getLoginCredentials({
    @required AccountType accountType,
    EmailAddress email,
    Password password,
  }) {
    return accountType.map(
      standard: (_) async {
        AuthCredential authCredential;
        final _emailAddressStr = email.getOrCrash();
        final _passwordStr = password.getOrCrash();
        authCredential = EmailAuthProvider.getCredential(
            email: _emailAddressStr, password: _passwordStr);

        return right(FirebaseAuthCredentials(
            emailAddress: _emailAddressStr, authCredential: authCredential));
      },
      google: (_) async {
        final googleUser = await _googleSignIn.signIn();
        if (googleUser == null) {
          return left(const AuthFailure.canceledByUser());
        }
        final googleAuthentication = await googleUser.authentication;
        final authCredential = GoogleAuthProvider.getCredential(
            idToken: googleAuthentication.idToken,
            accessToken: googleAuthentication.accessToken);
        return right(FirebaseAuthCredentials(
            emailAddress: googleUser.email, authCredential: authCredential));
      },
      facebook: (_) async {
        final facebookUser = await _facebookLogin.logIn(["email"]);

        if (facebookUser.status == FacebookLoginStatus.loggedIn) {
          final authCredential = FacebookAuthProvider.getCredential(
              accessToken: facebookUser.accessToken.token);
          final serverResponse = await http.get(
              "https://graph.facebook.com/v2.12/me?fields=email&access_token=${facebookUser.accessToken.token}");
          if (serverResponse.statusCode != 200 || serverResponse.body == null) {
            return left(const AuthFailure.serverError());
          }
          final jsonResponse = json.decode(serverResponse.body);
          return right(
            FirebaseAuthCredentials(
              emailAddress: jsonResponse['email'].toString(),
              authCredential: authCredential,
            ),
          );
        } else if (facebookUser.status == FacebookLoginStatus.cancelledByUser) {
          return left(const AuthFailure.canceledByUser());
        } else {
          return left(const AuthFailure.serverError());
        }
      },
    );
  }

  Future<Either<AuthFailure, Unit>> _logInWithAccountType({
    @required AccountType accountType,
    EmailAddress emailAddress,
    Password password,
  }) async {
    Either<AuthFailure, FirebaseAuthCredentials> authCredential;
    if (accountType is Standard) {
      authCredential = await _getLoginCredentials(
          accountType: accountType, email: emailAddress, password: password);
    } else {
      authCredential = await _getLoginCredentials(accountType: accountType);
    }
    return authCredential.fold(
      (l) => left(l),
      (value) async {
        final List<String> signInMethods = await _firebaseAuth
            .fetchSignInMethodsForEmail(email: value.emailAddress);
        if (signInMethods.isNotEmpty &&
            !signInMethods.contains(_accountTypeToService(accountType))) {
          return left(
            AuthFailure.accountCanBeLinked(
                listOfLoginMethods: signInMethods, linkWith: accountType),
          );
        }
        try {
          await _firebaseAuth.signInWithCredential(value.authCredential);
          return right(unit);
        } on PlatformException catch (e) {
          if (e.code == "ERROR_INVALID_CREDENTIAL") {
            return left(const AuthFailure.invalidCredentials());
          }
          if (e.code == "ERROR_USER_NOT_FOUND") {
            return left(const AuthFailure.invalidCredentials());
          } else {
            return left(const AuthFailure.serverError());
          }
        }
      },
    );
  }

  String _accountTypeToService(AccountType type) {
    return type.map(
        standard: (_) => "password",
        google: (_) => "google.com",
        facebook: (_) => "facebook.com");
  }
}
