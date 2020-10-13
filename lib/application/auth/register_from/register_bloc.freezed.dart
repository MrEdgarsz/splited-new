// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

// ignore: unused_element
  _RegisterWithEmailAndPassword registerWithEmailAndPassword() {
    return const _RegisterWithEmailAndPassword();
  }

// ignore: unused_element
  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

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
  _TermsAcceptanceChanged termsAcceptanceChanged(bool termsAccepted) {
    return _TermsAcceptanceChanged(
      termsAccepted,
    );
  }
}

// ignore: unused_element
const $RegisterEvent = _$RegisterEventTearOff();

mixin _$RegisterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPassword(),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPassword(),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPassword(
            _RegisterWithEmailAndPassword value),
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordRepeatChanged(_PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPassword(_RegisterWithEmailAndPassword value),
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordRepeatChanged(_PasswordRepeatChanged value),
    Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
    @required Result orElse(),
  });
}

abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

abstract class _$RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory _$RegisterWithEmailAndPasswordCopyWith(
          _RegisterWithEmailAndPassword value,
          $Res Function(_RegisterWithEmailAndPassword) then) =
      __$RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
}

class __$RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$RegisterWithEmailAndPasswordCopyWith<$Res> {
  __$RegisterWithEmailAndPasswordCopyWithImpl(
      _RegisterWithEmailAndPassword _value,
      $Res Function(_RegisterWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _RegisterWithEmailAndPassword));

  @override
  _RegisterWithEmailAndPassword get _value =>
      super._value as _RegisterWithEmailAndPassword;
}

class _$_RegisterWithEmailAndPassword implements _RegisterWithEmailAndPassword {
  const _$_RegisterWithEmailAndPassword();

  @override
  String toString() {
    return 'RegisterEvent.registerWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPassword(),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    return registerWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPassword(),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPassword(
            _RegisterWithEmailAndPassword value),
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordRepeatChanged(_PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPassword(_RegisterWithEmailAndPassword value),
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordRepeatChanged(_PasswordRepeatChanged value),
    Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPassword implements RegisterEvent {
  const factory _RegisterWithEmailAndPassword() =
      _$_RegisterWithEmailAndPassword;
}

abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class __$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPassword(),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPassword(),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPassword(
            _RegisterWithEmailAndPassword value),
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordRepeatChanged(_PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPassword(_RegisterWithEmailAndPassword value),
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordRepeatChanged(_PasswordRepeatChanged value),
    Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email;
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class __$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
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
    return 'RegisterEvent.passwordChanged(password: $password)';
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
    @required Result registerWithEmailAndPassword(),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPassword(),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
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
    @required
        Result registerWithEmailAndPassword(
            _RegisterWithEmailAndPassword value),
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordRepeatChanged(_PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPassword(_RegisterWithEmailAndPassword value),
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordRepeatChanged(_PasswordRepeatChanged value),
    Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegisterEvent {
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
    extends _$RegisterEventCopyWithImpl<$Res>
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
    return 'RegisterEvent.passwordRepeatChanged(passwordRepeat: $passwordRepeat)';
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
    @required Result registerWithEmailAndPassword(),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    return passwordRepeatChanged(passwordRepeat);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPassword(),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
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
    @required
        Result registerWithEmailAndPassword(
            _RegisterWithEmailAndPassword value),
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordRepeatChanged(_PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    return passwordRepeatChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPassword(_RegisterWithEmailAndPassword value),
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordRepeatChanged(_PasswordRepeatChanged value),
    Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordRepeatChanged != null) {
      return passwordRepeatChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordRepeatChanged implements RegisterEvent {
  const factory _PasswordRepeatChanged(String passwordRepeat) =
      _$_PasswordRepeatChanged;

  String get passwordRepeat;
  _$PasswordRepeatChangedCopyWith<_PasswordRepeatChanged> get copyWith;
}

abstract class _$TermsAcceptanceChangedCopyWith<$Res> {
  factory _$TermsAcceptanceChangedCopyWith(_TermsAcceptanceChanged value,
          $Res Function(_TermsAcceptanceChanged) then) =
      __$TermsAcceptanceChangedCopyWithImpl<$Res>;
  $Res call({bool termsAccepted});
}

class __$TermsAcceptanceChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$TermsAcceptanceChangedCopyWith<$Res> {
  __$TermsAcceptanceChangedCopyWithImpl(_TermsAcceptanceChanged _value,
      $Res Function(_TermsAcceptanceChanged) _then)
      : super(_value, (v) => _then(v as _TermsAcceptanceChanged));

  @override
  _TermsAcceptanceChanged get _value => super._value as _TermsAcceptanceChanged;

  @override
  $Res call({
    Object termsAccepted = freezed,
  }) {
    return _then(_TermsAcceptanceChanged(
      termsAccepted == freezed ? _value.termsAccepted : termsAccepted as bool,
    ));
  }
}

class _$_TermsAcceptanceChanged implements _TermsAcceptanceChanged {
  const _$_TermsAcceptanceChanged(this.termsAccepted)
      : assert(termsAccepted != null);

  @override
  final bool termsAccepted;

  @override
  String toString() {
    return 'RegisterEvent.termsAcceptanceChanged(termsAccepted: $termsAccepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TermsAcceptanceChanged &&
            (identical(other.termsAccepted, termsAccepted) ||
                const DeepCollectionEquality()
                    .equals(other.termsAccepted, termsAccepted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(termsAccepted);

  @override
  _$TermsAcceptanceChangedCopyWith<_TermsAcceptanceChanged> get copyWith =>
      __$TermsAcceptanceChangedCopyWithImpl<_TermsAcceptanceChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result registerWithEmailAndPassword(),
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    return termsAcceptanceChanged(termsAccepted);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result registerWithEmailAndPassword(),
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (termsAcceptanceChanged != null) {
      return termsAcceptanceChanged(termsAccepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result registerWithEmailAndPassword(
            _RegisterWithEmailAndPassword value),
    @required Result emailChanged(_EmailChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required Result passwordRepeatChanged(_PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
  }) {
    assert(registerWithEmailAndPassword != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    return termsAcceptanceChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPassword(_RegisterWithEmailAndPassword value),
    Result emailChanged(_EmailChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result passwordRepeatChanged(_PasswordRepeatChanged value),
    Result termsAcceptanceChanged(_TermsAcceptanceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (termsAcceptanceChanged != null) {
      return termsAcceptanceChanged(this);
    }
    return orElse();
  }
}

abstract class _TermsAcceptanceChanged implements RegisterEvent {
  const factory _TermsAcceptanceChanged(bool termsAccepted) =
      _$_TermsAcceptanceChanged;

  bool get termsAccepted;
  _$TermsAcceptanceChangedCopyWith<_TermsAcceptanceChanged> get copyWith;
}

class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

// ignore: unused_element
  _RegisterState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required Password passwordRepeat,
      @required bool isSubmitting,
      @required bool showErrors,
      @required bool termsAccepted,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _RegisterState(
      emailAddress: emailAddress,
      password: password,
      passwordRepeat: passwordRepeat,
      isSubmitting: isSubmitting,
      showErrors: showErrors,
      termsAccepted: termsAccepted,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $RegisterState = _$RegisterStateTearOff();

mixin _$RegisterState {
  EmailAddress get emailAddress;
  Password get password;
  Password get passwordRepeat;
  bool get isSubmitting;
  bool get showErrors;
  bool get termsAccepted;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $RegisterStateCopyWith<RegisterState> get copyWith;
}

abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Password passwordRepeat,
      bool isSubmitting,
      bool showErrors,
      bool termsAccepted,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object passwordRepeat = freezed,
    Object isSubmitting = freezed,
    Object showErrors = freezed,
    Object termsAccepted = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      passwordRepeat: passwordRepeat == freezed
          ? _value.passwordRepeat
          : passwordRepeat as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrors:
          showErrors == freezed ? _value.showErrors : showErrors as bool,
      termsAccepted: termsAccepted == freezed
          ? _value.termsAccepted
          : termsAccepted as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Password passwordRepeat,
      bool isSubmitting,
      bool showErrors,
      bool termsAccepted,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object passwordRepeat = freezed,
    Object isSubmitting = freezed,
    Object showErrors = freezed,
    Object termsAccepted = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_RegisterState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      passwordRepeat: passwordRepeat == freezed
          ? _value.passwordRepeat
          : passwordRepeat as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrors:
          showErrors == freezed ? _value.showErrors : showErrors as bool,
      termsAccepted: termsAccepted == freezed
          ? _value.termsAccepted
          : termsAccepted as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {@required this.emailAddress,
      @required this.password,
      @required this.passwordRepeat,
      @required this.isSubmitting,
      @required this.showErrors,
      @required this.termsAccepted,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(passwordRepeat != null),
        assert(isSubmitting != null),
        assert(showErrors != null),
        assert(termsAccepted != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Password passwordRepeat;
  @override
  final bool isSubmitting;
  @override
  final bool showErrors;
  @override
  final bool termsAccepted;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterState(emailAddress: $emailAddress, password: $password, passwordRepeat: $passwordRepeat, isSubmitting: $isSubmitting, showErrors: $showErrors, termsAccepted: $termsAccepted, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
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
            (identical(other.termsAccepted, termsAccepted) ||
                const DeepCollectionEquality()
                    .equals(other.termsAccepted, termsAccepted)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordRepeat) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrors) ^
      const DeepCollectionEquality().hash(termsAccepted) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              Password passwordRepeat,
          @required
              bool isSubmitting,
          @required
              bool showErrors,
          @required
              bool termsAccepted,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_RegisterState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Password get passwordRepeat;
  @override
  bool get isSubmitting;
  @override
  bool get showErrors;
  @override
  bool get termsAccepted;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith;
}
