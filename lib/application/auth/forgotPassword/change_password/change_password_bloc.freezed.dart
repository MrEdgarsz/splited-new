// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChangePasswordEventTearOff {
  const _$ChangePasswordEventTearOff();

// ignore: unused_element
  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  _PasswordRepeatChanged passwordRepeatChanged(String passwordRepeat) {
    return _PasswordRepeatChanged(
      passwordRepeat,
    );
  }

// ignore: unused_element
  _ChangePassword changePassword(
      EmailAddress emailAddress, VerificationCode verificationCode) {
    return _ChangePassword(
      emailAddress,
      verificationCode,
    );
  }
}

// ignore: unused_element
const $ChangePasswordEvent = _$ChangePasswordEventTearOff();

mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required
        Result changePassword(
            EmailAddress emailAddress, VerificationCode verificationCode),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result changePassword(
        EmailAddress emailAddress, VerificationCode verificationCode),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordRepeatChanged(_PasswordRepeatChanged value),
    @required Result changePassword(_ChangePassword value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(_PasswordChanged value),
    Result passwordRepeatChanged(_PasswordRepeatChanged value),
    Result changePassword(_ChangePassword value),
    @required Result orElse(),
  });
}

abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
}

class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;
}

abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class __$PasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'ChangePasswordEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required
        Result changePassword(
            EmailAddress emailAddress, VerificationCode verificationCode),
  }) {
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(changePassword != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result changePassword(
        EmailAddress emailAddress, VerificationCode verificationCode),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordRepeatChanged(_PasswordRepeatChanged value),
    @required Result changePassword(_ChangePassword value),
  }) {
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(changePassword != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(_PasswordChanged value),
    Result passwordRepeatChanged(_PasswordRepeatChanged value),
    Result changePassword(_ChangePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements ChangePasswordEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password;
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

abstract class _$PasswordRepeatChangedCopyWith<$Res> {
  factory _$PasswordRepeatChangedCopyWith(_PasswordRepeatChanged value,
          $Res Function(_PasswordRepeatChanged) then) =
      __$PasswordRepeatChangedCopyWithImpl<$Res>;
  $Res call({String passwordRepeat});
}

class __$PasswordRepeatChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$PasswordRepeatChangedCopyWith<$Res> {
  __$PasswordRepeatChangedCopyWithImpl(_PasswordRepeatChanged _value,
      $Res Function(_PasswordRepeatChanged) _then)
      : super(_value, (v) => _then(v as _PasswordRepeatChanged));

  @override
  _PasswordRepeatChanged get _value => super._value as _PasswordRepeatChanged;

  @override
  $Res call({
    Object passwordRepeat = freezed,
  }) {
    return _then(_PasswordRepeatChanged(
      passwordRepeat == freezed
          ? _value.passwordRepeat
          : passwordRepeat as String,
    ));
  }
}

class _$_PasswordRepeatChanged implements _PasswordRepeatChanged {
  const _$_PasswordRepeatChanged(this.passwordRepeat)
      : assert(passwordRepeat != null);

  @override
  final String passwordRepeat;

  @override
  String toString() {
    return 'ChangePasswordEvent.passwordRepeatChanged(passwordRepeat: $passwordRepeat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordRepeatChanged &&
            (identical(other.passwordRepeat, passwordRepeat) ||
                const DeepCollectionEquality()
                    .equals(other.passwordRepeat, passwordRepeat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passwordRepeat);

  @override
  _$PasswordRepeatChangedCopyWith<_PasswordRepeatChanged> get copyWith =>
      __$PasswordRepeatChangedCopyWithImpl<_PasswordRepeatChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required
        Result changePassword(
            EmailAddress emailAddress, VerificationCode verificationCode),
  }) {
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(changePassword != null);
    return passwordRepeatChanged(passwordRepeat);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result changePassword(
        EmailAddress emailAddress, VerificationCode verificationCode),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordRepeatChanged != null) {
      return passwordRepeatChanged(passwordRepeat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordRepeatChanged(_PasswordRepeatChanged value),
    @required Result changePassword(_ChangePassword value),
  }) {
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(changePassword != null);
    return passwordRepeatChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(_PasswordChanged value),
    Result passwordRepeatChanged(_PasswordRepeatChanged value),
    Result changePassword(_ChangePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordRepeatChanged != null) {
      return passwordRepeatChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordRepeatChanged implements ChangePasswordEvent {
  const factory _PasswordRepeatChanged(String passwordRepeat) =
      _$_PasswordRepeatChanged;

  String get passwordRepeat;
  _$PasswordRepeatChangedCopyWith<_PasswordRepeatChanged> get copyWith;
}

abstract class _$ChangePasswordCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) then) =
      __$ChangePasswordCopyWithImpl<$Res>;
  $Res call({EmailAddress emailAddress, VerificationCode verificationCode});
}

class __$ChangePasswordCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(
      _ChangePassword _value, $Res Function(_ChangePassword) _then)
      : super(_value, (v) => _then(v as _ChangePassword));

  @override
  _ChangePassword get _value => super._value as _ChangePassword;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object verificationCode = freezed,
  }) {
    return _then(_ChangePassword(
      emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      verificationCode == freezed
          ? _value.verificationCode
          : verificationCode as VerificationCode,
    ));
  }
}

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(this.emailAddress, this.verificationCode)
      : assert(emailAddress != null),
        assert(verificationCode != null);

  @override
  final EmailAddress emailAddress;
  @override
  final VerificationCode verificationCode;

  @override
  String toString() {
    return 'ChangePasswordEvent.changePassword(emailAddress: $emailAddress, verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePassword &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.verificationCode, verificationCode) ||
                const DeepCollectionEquality()
                    .equals(other.verificationCode, verificationCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(verificationCode);

  @override
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required
        Result changePassword(
            EmailAddress emailAddress, VerificationCode verificationCode),
  }) {
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(changePassword != null);
    return changePassword(emailAddress, verificationCode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result changePassword(
        EmailAddress emailAddress, VerificationCode verificationCode),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(emailAddress, verificationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordRepeatChanged(_PasswordRepeatChanged value),
    @required Result changePassword(_ChangePassword value),
  }) {
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(changePassword != null);
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(_PasswordChanged value),
    Result passwordRepeatChanged(_PasswordRepeatChanged value),
    Result changePassword(_ChangePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements ChangePasswordEvent {
  const factory _ChangePassword(
          EmailAddress emailAddress, VerificationCode verificationCode) =
      _$_ChangePassword;

  EmailAddress get emailAddress;
  VerificationCode get verificationCode;
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith;
}

class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

// ignore: unused_element
  _ChangePasswordState call(
      {@required Password password,
      @required Password passwordRepeat,
      @required bool isSubmitting,
      @required bool showErrors,
      @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) {
    return _ChangePasswordState(
      password: password,
      passwordRepeat: passwordRepeat,
      isSubmitting: isSubmitting,
      showErrors: showErrors,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ChangePasswordState = _$ChangePasswordStateTearOff();

mixin _$ChangePasswordState {
  Password get password;
  Password get passwordRepeat;
  bool get isSubmitting;
  bool get showErrors;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;

  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith;
}

abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {Password password,
      Password passwordRepeat,
      bool isSubmitting,
      bool showErrors,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object password = freezed,
    Object passwordRepeat = freezed,
    Object isSubmitting = freezed,
    Object showErrors = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed ? _value.password : password as Password,
      passwordRepeat: passwordRepeat == freezed
          ? _value.passwordRepeat
          : passwordRepeat as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrors:
          showErrors == freezed ? _value.showErrors : showErrors as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) then) =
      __$ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password password,
      Password passwordRepeat,
      bool isSubmitting,
      bool showErrors,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

class __$ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(
      _ChangePasswordState _value, $Res Function(_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordState));

  @override
  _ChangePasswordState get _value => super._value as _ChangePasswordState;

  @override
  $Res call({
    Object password = freezed,
    Object passwordRepeat = freezed,
    Object isSubmitting = freezed,
    Object showErrors = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_ChangePasswordState(
      password: password == freezed ? _value.password : password as Password,
      passwordRepeat: passwordRepeat == freezed
          ? _value.passwordRepeat
          : passwordRepeat as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrors:
          showErrors == freezed ? _value.showErrors : showErrors as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {@required this.password,
      @required this.passwordRepeat,
      @required this.isSubmitting,
      @required this.showErrors,
      @required this.failureOrSuccessOption})
      : assert(password != null),
        assert(passwordRepeat != null),
        assert(isSubmitting != null),
        assert(showErrors != null),
        assert(failureOrSuccessOption != null);

  @override
  final Password password;
  @override
  final Password passwordRepeat;
  @override
  final bool isSubmitting;
  @override
  final bool showErrors;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ChangePasswordState(password: $password, passwordRepeat: $passwordRepeat, isSubmitting: $isSubmitting, showErrors: $showErrors, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePasswordState &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordRepeat, passwordRepeat) ||
                const DeepCollectionEquality()
                    .equals(other.passwordRepeat, passwordRepeat)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrors, showErrors) ||
                const DeepCollectionEquality()
                    .equals(other.showErrors, showErrors)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordRepeat) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrors) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
          {@required Password password,
          @required Password passwordRepeat,
          @required bool isSubmitting,
          @required bool showErrors,
          @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) =
      _$_ChangePasswordState;

  @override
  Password get password;
  @override
  Password get passwordRepeat;
  @override
  bool get isSubmitting;
  @override
  bool get showErrors;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith;
}
