import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@immutable
@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.canceledByUser() = _CanceledByUser;
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.invalidCredentials() = _InvalidCredentials;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlredyInUse;
  const factory AuthFailure.userNotSignedIn() = _UserNotSignedIn;
  const factory AuthFailure.internetConnectionNotAvailable() =
      _InternetConnectionNotAvailable;
  const factory AuthFailure.accountWasCreatedWithDiffrentService() =
      _AccountWasCreatedWithDiffrentService;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.verificationCodeNotFound() =
      _VerificationCodeNotFound;
}
