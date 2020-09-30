// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  CanceledByUser canceledByUser() {
    return const CanceledByUser();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  InvalidCredentials invalidCredentials() {
    return const InvalidCredentials();
  }

// ignore: unused_element
  EmailAlredyInUse emailAlreadyInUse() {
    return const EmailAlredyInUse();
  }

// ignore: unused_element
  UserNotSignedIn userNotSignedIn() {
    return const UserNotSignedIn();
  }

// ignore: unused_element
  InternetConnectionNotAvailable internetConnectionNotAvailable() {
    return const InternetConnectionNotAvailable();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result invalidCredentials(),
    @required Result emailAlreadyInUse(),
    @required Result userNotSignedIn(),
    @required Result internetConnectionNotAvailable(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result invalidCredentials(),
    Result emailAlreadyInUse(),
    Result userNotSignedIn(),
    Result internetConnectionNotAvailable(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result invalidCredentials(InvalidCredentials value),
    @required Result emailAlreadyInUse(EmailAlredyInUse value),
    @required Result userNotSignedIn(UserNotSignedIn value),
    @required
        Result internetConnectionNotAvailable(
            InternetConnectionNotAvailable value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result invalidCredentials(InvalidCredentials value),
    Result emailAlreadyInUse(EmailAlredyInUse value),
    Result userNotSignedIn(UserNotSignedIn value),
    Result internetConnectionNotAvailable(InternetConnectionNotAvailable value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $CanceledByUserCopyWith<$Res> {
  factory $CanceledByUserCopyWith(
          CanceledByUser value, $Res Function(CanceledByUser) then) =
      _$CanceledByUserCopyWithImpl<$Res>;
}

class _$CanceledByUserCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $CanceledByUserCopyWith<$Res> {
  _$CanceledByUserCopyWithImpl(
      CanceledByUser _value, $Res Function(CanceledByUser) _then)
      : super(_value, (v) => _then(v as CanceledByUser));

  @override
  CanceledByUser get _value => super._value as CanceledByUser;
}

class _$CanceledByUser implements CanceledByUser {
  const _$CanceledByUser();

  @override
  String toString() {
    return 'AuthFailure.canceledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CanceledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result invalidCredentials(),
    @required Result emailAlreadyInUse(),
    @required Result userNotSignedIn(),
    @required Result internetConnectionNotAvailable(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return canceledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result invalidCredentials(),
    Result emailAlreadyInUse(),
    Result userNotSignedIn(),
    Result internetConnectionNotAvailable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceledByUser != null) {
      return canceledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result invalidCredentials(InvalidCredentials value),
    @required Result emailAlreadyInUse(EmailAlredyInUse value),
    @required Result userNotSignedIn(UserNotSignedIn value),
    @required
        Result internetConnectionNotAvailable(
            InternetConnectionNotAvailable value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return canceledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result invalidCredentials(InvalidCredentials value),
    Result emailAlreadyInUse(EmailAlredyInUse value),
    Result userNotSignedIn(UserNotSignedIn value),
    Result internetConnectionNotAvailable(InternetConnectionNotAvailable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceledByUser != null) {
      return canceledByUser(this);
    }
    return orElse();
  }
}

abstract class CanceledByUser implements AuthFailure {
  const factory CanceledByUser() = _$CanceledByUser;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result invalidCredentials(),
    @required Result emailAlreadyInUse(),
    @required Result userNotSignedIn(),
    @required Result internetConnectionNotAvailable(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result invalidCredentials(),
    Result emailAlreadyInUse(),
    Result userNotSignedIn(),
    Result internetConnectionNotAvailable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result invalidCredentials(InvalidCredentials value),
    @required Result emailAlreadyInUse(EmailAlredyInUse value),
    @required Result userNotSignedIn(UserNotSignedIn value),
    @required
        Result internetConnectionNotAvailable(
            InternetConnectionNotAvailable value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result invalidCredentials(InvalidCredentials value),
    Result emailAlreadyInUse(EmailAlredyInUse value),
    Result userNotSignedIn(UserNotSignedIn value),
    Result internetConnectionNotAvailable(InternetConnectionNotAvailable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $InvalidCredentialsCopyWith<$Res> {
  factory $InvalidCredentialsCopyWith(
          InvalidCredentials value, $Res Function(InvalidCredentials) then) =
      _$InvalidCredentialsCopyWithImpl<$Res>;
}

class _$InvalidCredentialsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidCredentialsCopyWith<$Res> {
  _$InvalidCredentialsCopyWithImpl(
      InvalidCredentials _value, $Res Function(InvalidCredentials) _then)
      : super(_value, (v) => _then(v as InvalidCredentials));

  @override
  InvalidCredentials get _value => super._value as InvalidCredentials;
}

class _$InvalidCredentials implements InvalidCredentials {
  const _$InvalidCredentials();

  @override
  String toString() {
    return 'AuthFailure.invalidCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result invalidCredentials(),
    @required Result emailAlreadyInUse(),
    @required Result userNotSignedIn(),
    @required Result internetConnectionNotAvailable(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result invalidCredentials(),
    Result emailAlreadyInUse(),
    Result userNotSignedIn(),
    Result internetConnectionNotAvailable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result invalidCredentials(InvalidCredentials value),
    @required Result emailAlreadyInUse(EmailAlredyInUse value),
    @required Result userNotSignedIn(UserNotSignedIn value),
    @required
        Result internetConnectionNotAvailable(
            InternetConnectionNotAvailable value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result invalidCredentials(InvalidCredentials value),
    Result emailAlreadyInUse(EmailAlredyInUse value),
    Result userNotSignedIn(UserNotSignedIn value),
    Result internetConnectionNotAvailable(InternetConnectionNotAvailable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials implements AuthFailure {
  const factory InvalidCredentials() = _$InvalidCredentials;
}

abstract class $EmailAlredyInUseCopyWith<$Res> {
  factory $EmailAlredyInUseCopyWith(
          EmailAlredyInUse value, $Res Function(EmailAlredyInUse) then) =
      _$EmailAlredyInUseCopyWithImpl<$Res>;
}

class _$EmailAlredyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlredyInUseCopyWith<$Res> {
  _$EmailAlredyInUseCopyWithImpl(
      EmailAlredyInUse _value, $Res Function(EmailAlredyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlredyInUse));

  @override
  EmailAlredyInUse get _value => super._value as EmailAlredyInUse;
}

class _$EmailAlredyInUse implements EmailAlredyInUse {
  const _$EmailAlredyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlredyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result invalidCredentials(),
    @required Result emailAlreadyInUse(),
    @required Result userNotSignedIn(),
    @required Result internetConnectionNotAvailable(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result invalidCredentials(),
    Result emailAlreadyInUse(),
    Result userNotSignedIn(),
    Result internetConnectionNotAvailable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result invalidCredentials(InvalidCredentials value),
    @required Result emailAlreadyInUse(EmailAlredyInUse value),
    @required Result userNotSignedIn(UserNotSignedIn value),
    @required
        Result internetConnectionNotAvailable(
            InternetConnectionNotAvailable value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result invalidCredentials(InvalidCredentials value),
    Result emailAlreadyInUse(EmailAlredyInUse value),
    Result userNotSignedIn(UserNotSignedIn value),
    Result internetConnectionNotAvailable(InternetConnectionNotAvailable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlredyInUse implements AuthFailure {
  const factory EmailAlredyInUse() = _$EmailAlredyInUse;
}

abstract class $UserNotSignedInCopyWith<$Res> {
  factory $UserNotSignedInCopyWith(
          UserNotSignedIn value, $Res Function(UserNotSignedIn) then) =
      _$UserNotSignedInCopyWithImpl<$Res>;
}

class _$UserNotSignedInCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserNotSignedInCopyWith<$Res> {
  _$UserNotSignedInCopyWithImpl(
      UserNotSignedIn _value, $Res Function(UserNotSignedIn) _then)
      : super(_value, (v) => _then(v as UserNotSignedIn));

  @override
  UserNotSignedIn get _value => super._value as UserNotSignedIn;
}

class _$UserNotSignedIn implements UserNotSignedIn {
  const _$UserNotSignedIn();

  @override
  String toString() {
    return 'AuthFailure.userNotSignedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotSignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result invalidCredentials(),
    @required Result emailAlreadyInUse(),
    @required Result userNotSignedIn(),
    @required Result internetConnectionNotAvailable(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return userNotSignedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result invalidCredentials(),
    Result emailAlreadyInUse(),
    Result userNotSignedIn(),
    Result internetConnectionNotAvailable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotSignedIn != null) {
      return userNotSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result invalidCredentials(InvalidCredentials value),
    @required Result emailAlreadyInUse(EmailAlredyInUse value),
    @required Result userNotSignedIn(UserNotSignedIn value),
    @required
        Result internetConnectionNotAvailable(
            InternetConnectionNotAvailable value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return userNotSignedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result invalidCredentials(InvalidCredentials value),
    Result emailAlreadyInUse(EmailAlredyInUse value),
    Result userNotSignedIn(UserNotSignedIn value),
    Result internetConnectionNotAvailable(InternetConnectionNotAvailable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotSignedIn != null) {
      return userNotSignedIn(this);
    }
    return orElse();
  }
}

abstract class UserNotSignedIn implements AuthFailure {
  const factory UserNotSignedIn() = _$UserNotSignedIn;
}

abstract class $InternetConnectionNotAvailableCopyWith<$Res> {
  factory $InternetConnectionNotAvailableCopyWith(
          InternetConnectionNotAvailable value,
          $Res Function(InternetConnectionNotAvailable) then) =
      _$InternetConnectionNotAvailableCopyWithImpl<$Res>;
}

class _$InternetConnectionNotAvailableCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InternetConnectionNotAvailableCopyWith<$Res> {
  _$InternetConnectionNotAvailableCopyWithImpl(
      InternetConnectionNotAvailable _value,
      $Res Function(InternetConnectionNotAvailable) _then)
      : super(_value, (v) => _then(v as InternetConnectionNotAvailable));

  @override
  InternetConnectionNotAvailable get _value =>
      super._value as InternetConnectionNotAvailable;
}

class _$InternetConnectionNotAvailable
    implements InternetConnectionNotAvailable {
  const _$InternetConnectionNotAvailable();

  @override
  String toString() {
    return 'AuthFailure.internetConnectionNotAvailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternetConnectionNotAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result invalidCredentials(),
    @required Result emailAlreadyInUse(),
    @required Result userNotSignedIn(),
    @required Result internetConnectionNotAvailable(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return internetConnectionNotAvailable();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result invalidCredentials(),
    Result emailAlreadyInUse(),
    Result userNotSignedIn(),
    Result internetConnectionNotAvailable(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internetConnectionNotAvailable != null) {
      return internetConnectionNotAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result invalidCredentials(InvalidCredentials value),
    @required Result emailAlreadyInUse(EmailAlredyInUse value),
    @required Result userNotSignedIn(UserNotSignedIn value),
    @required
        Result internetConnectionNotAvailable(
            InternetConnectionNotAvailable value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(invalidCredentials != null);
    assert(emailAlreadyInUse != null);
    assert(userNotSignedIn != null);
    assert(internetConnectionNotAvailable != null);
    return internetConnectionNotAvailable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result invalidCredentials(InvalidCredentials value),
    Result emailAlreadyInUse(EmailAlredyInUse value),
    Result userNotSignedIn(UserNotSignedIn value),
    Result internetConnectionNotAvailable(InternetConnectionNotAvailable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internetConnectionNotAvailable != null) {
      return internetConnectionNotAvailable(this);
    }
    return orElse();
  }
}

abstract class InternetConnectionNotAvailable implements AuthFailure {
  const factory InternetConnectionNotAvailable() =
      _$InternetConnectionNotAvailable;
}
