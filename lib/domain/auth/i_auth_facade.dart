import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:splited/domain/auth/auth_failure.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/password.dart';
import 'package:splited/domain/auth/value_objects/password_change_code.dart';

import 'accountTypes.dart';

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
  Future<Either<AuthFailure, Unit>> linkAccountWith({
    @required AccountType type,
    EmailAddress email,
    Password password,
  });
  Future<Either<AuthFailure, Unit>> remindPassword({
    @required EmailAddress email,
  });
  Future<Either<AuthFailure, Unit>> checkPasswordCode({
    @required PasswordChangeCode code,
  });
  Future<Either<AuthFailure, Unit>> changePassword({
    @required EmailAddress email,
    @required Password password,
  }); //
}
