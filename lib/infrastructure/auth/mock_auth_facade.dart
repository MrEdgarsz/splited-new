import 'package:dartz/dartz.dart';
import 'package:splited/domain/auth/accountTypes.dart';
import 'package:splited/domain/auth/auth_failure.dart';
import 'package:splited/domain/auth/i_auth_facade.dart';
import 'package:splited/domain/auth/user.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/password.dart';
import 'package:splited/domain/auth/value_objects/verification_code.dart';

class MockAuthFacade extends IAuthFacade {
  @override
  Future<Either<AuthFailure, Unit>> registerWithLoginAndPassword(
      {EmailAddress email, Password password, String userName}) async {
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithLoginAndPassword(
      {EmailAddress email, Password password}) async {
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> remindPassword({EmailAddress email}) {
    // TODO: implement remindPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> linkAccountWith(
      {AccountType type, EmailAddress email, Password password}) {
    // TODO: implement linkAccountWith
    throw UnimplementedError();
  }

  @override
  Future<Option<User>> getSignedInUser() {
    // TODO: implement getSignedInUser
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword(
      {EmailAddress email, VerificationCode code, Password password}) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> checkPasswordCode(
      {VerificationCode code, EmailAddress email}) {
    // TODO: implement checkPasswordCode
    throw UnimplementedError();
  }
}
