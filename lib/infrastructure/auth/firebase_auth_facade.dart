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
import 'package:splited/domain/auth/user.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/password.dart';
import 'package:http/http.dart' as http;
import 'package:splited/domain/auth/value_objects/verification_code.dart';
import 'package:splited/infrastructure/auth/model/firebase_auth_credentials.dart';
import 'package:splited/infrastructure/connection/connection_facade.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade extends IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookLogin _facebookLogin;
  final ConnectionFacade _connectionFacade;
  final CloudFunctions _cloudFunctions;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn,
      this._facebookLogin, this._connectionFacade, this._cloudFunctions);
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
    if (await _connectionFacade.internetConnectionAvailable()) {
      return _logInWithAccountType(accountType: const Facebook());
    } else {
      return left(const AuthFailure.internetConnectionNotAvailable());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    if (await _connectionFacade.internetConnectionAvailable()) {
      return _logInWithAccountType(accountType: const Google());
    } else {
      return left(const AuthFailure.internetConnectionNotAvailable());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithLoginAndPassword(
      {EmailAddress email, Password password}) async {
    if (await _connectionFacade.internetConnectionAvailable()) {
      return _logInWithAccountType(
        accountType: const Standard(),
        emailAddress: email,
        password: password,
      );
    } else {
      return left(const AuthFailure.internetConnectionNotAvailable());
    }
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
        try {
          await _firebaseAuth.signInWithCredential(value.authCredential);
          return right(unit);
        } on PlatformException catch (e) {
          if (e.code == "ERROR_INVALID_CREDENTIAL") {
            return left(const AuthFailure.invalidCredentials());
          }
          if (e.code == "ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL") {
            return left(
                const AuthFailure.accountWasCreatedWithDiffrentService());
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

  @override
  Future<Option<User>> getSignedInUser() async {
    final FirebaseUser _firebaseUser = await _firebaseAuth.currentUser();
    return optionOf(await _firebaseUser.toDomain());
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
    await _facebookLogin.logOut();
  }

  @override
  Future<Either<AuthFailure, Unit>> remindPassword({EmailAddress email}) async {
    if (await _connectionFacade.internetConnectionAvailable()) {
      final String _emailStr = email.getOrCrash();
      try {
        await _cloudFunctions
            .getHttpsCallable(functionName: "generatePasswordResetCode")
            .call(<String, dynamic>{
          'email': _emailStr,
        });
        return right(unit);
      } on PlatformException catch (e) {
        if (e.code == "not-found") {
          return right(unit);
        } else {
          return left(const AuthFailure.serverError());
        }
      }
    } else {
      return left(const AuthFailure.internetConnectionNotAvailable());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> checkPasswordCode(
      {VerificationCode code, EmailAddress email}) async {
    if (await _connectionFacade.internetConnectionAvailable()) {
      final String _emailStr = email.getOrCrash();
      final String _codeStr = code.getJoinedOrCrash();
      try {
        await _cloudFunctions
            .getHttpsCallable(functionName: "verifyPasswordResetCode")
            .call({'email': _emailStr, 'code': _codeStr});
        return right(unit);
      } on PlatformException catch (e) {
        if (e.code == "not-found") {
          return left(const AuthFailure.verificationCodeNotFound());
        } else {
          return left(const AuthFailure.serverError());
        }
      }
    } else {
      return left(const AuthFailure.internetConnectionNotAvailable());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword({
    EmailAddress email,
    VerificationCode code,
    Password password,
  }) async {
    if (await _connectionFacade.internetConnectionAvailable()) {
      final String _emailStr = email.getOrCrash();
      final String _codeStr = code.getJoinedOrCrash();
      final String _passwordStr = password.getOrCrash();
      try {
        await _cloudFunctions
            .getHttpsCallable(functionName: "resetPassword")
            .call({
          'email': _emailStr,
          'code': _codeStr,
          'password': _passwordStr,
        });
        return right(unit);
      } on PlatformException catch (e) {
        if (e.code == "not-found") {
          return left(const AuthFailure.verificationCodeNotFound());
        } else {
          return left(const AuthFailure.serverError());
        }
      }
    } else {
      return left(const AuthFailure.internetConnectionNotAvailable());
    }
  }
}
