import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:splited/domain/auth/auth_failure.dart';
import 'package:splited/domain/auth/user.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/password.dart';
import 'package:splited/domain/auth/value_objects/verification_code.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithLoginAndPassword({
    @required EmailAddress email,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> registerWithLoginAndPassword({
    @required EmailAddress email,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<Either<AuthFailure, Unit>> signInWithFacebook();
  Future<Either<AuthFailure, Unit>> remindPassword({
    @required EmailAddress email,
  });
  Future<Either<AuthFailure, Unit>> checkPasswordCode({
    @required VerificationCode code,
    @required EmailAddress email,
  });
  Future<Either<AuthFailure, Unit>> changePassword({
    @required EmailAddress email,
    @required VerificationCode code,
    @required Password password,
  });
  Future<Option<User>> getSignedInUser();
  Future<void> signOut();
}
