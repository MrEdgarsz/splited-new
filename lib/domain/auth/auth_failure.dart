import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@immutable
@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.canceledByUser() = CanceledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlredyInUse;
  const factory AuthFailure.userNotSignedIn() = UserNotSignedIn;
  const factory AuthFailure.internetConnectionNotAvailable() =
      InternetConnectionNotAvailable;
}
