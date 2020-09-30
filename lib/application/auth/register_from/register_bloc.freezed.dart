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
  RegisterWithEmailAndPassword registerWithEmailAndPassword() {
    return const RegisterWithEmailAndPassword();
  }

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  PasswordRepeatChanged passwordRepeatChanged(String passwordRepeat) {
    return PasswordRepeatChanged(
      passwordRepeat,
    );
  }

// ignore: unused_element
  TermsAcceptanceChanged termsAcceptanceChanged(bool termsAccepted) {
    return TermsAcceptanceChanged(
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
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
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

abstract class $RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordCopyWith(
          RegisterWithEmailAndPassword value,
          $Res Function(RegisterWithEmailAndPassword) then) =
      _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
}

class _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordCopyWithImpl(
      RegisterWithEmailAndPassword _value,
      $Res Function(RegisterWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPassword));

  @override
  RegisterWithEmailAndPassword get _value =>
      super._value as RegisterWithEmailAndPassword;
}

class _$RegisterWithEmailAndPassword implements RegisterWithEmailAndPassword {
  const _$RegisterWithEmailAndPassword();

  @override
  String toString() {
    return 'RegisterEvent.registerWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterWithEmailAndPassword);
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
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
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
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPassword implements RegisterEvent {
  const factory RegisterWithEmailAndPassword() = _$RegisterWithEmailAndPassword;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

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
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
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
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

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
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
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
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $PasswordRepeatChangedCopyWith<$Res> {
  factory $PasswordRepeatChangedCopyWith(PasswordRepeatChanged value,
          $Res Function(PasswordRepeatChanged) then) =
      _$PasswordRepeatChangedCopyWithImpl<$Res>;
  $Res call({String passwordRepeat});
}

class _$PasswordRepeatChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $PasswordRepeatChangedCopyWith<$Res> {
  _$PasswordRepeatChangedCopyWithImpl(
      PasswordRepeatChanged _value, $Res Function(PasswordRepeatChanged) _then)
      : super(_value, (v) => _then(v as PasswordRepeatChanged));

  @override
  PasswordRepeatChanged get _value => super._value as PasswordRepeatChanged;

  @override
  $Res call({
    Object passwordRepeat = freezed,
  }) {
    return _then(PasswordRepeatChanged(
      passwordRepeat == freezed
          ? _value.passwordRepeat
          : passwordRepeat as String,
    ));
  }
}

class _$PasswordRepeatChanged implements PasswordRepeatChanged {
  const _$PasswordRepeatChanged(this.passwordRepeat)
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
        (other is PasswordRepeatChanged &&
            (identical(other.passwordRepeat, passwordRepeat) ||
                const DeepCollectionEquality()
                    .equals(other.passwordRepeat, passwordRepeat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passwordRepeat);

  @override
  $PasswordRepeatChangedCopyWith<PasswordRepeatChanged> get copyWith =>
      _$PasswordRepeatChangedCopyWithImpl<PasswordRepeatChanged>(
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
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
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
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordRepeatChanged != null) {
      return passwordRepeatChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordRepeatChanged implements RegisterEvent {
  const factory PasswordRepeatChanged(String passwordRepeat) =
      _$PasswordRepeatChanged;

  String get passwordRepeat;
  $PasswordRepeatChangedCopyWith<PasswordRepeatChanged> get copyWith;
}

abstract class $TermsAcceptanceChangedCopyWith<$Res> {
  factory $TermsAcceptanceChangedCopyWith(TermsAcceptanceChanged value,
          $Res Function(TermsAcceptanceChanged) then) =
      _$TermsAcceptanceChangedCopyWithImpl<$Res>;
  $Res call({bool termsAccepted});
}

class _$TermsAcceptanceChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $TermsAcceptanceChangedCopyWith<$Res> {
  _$TermsAcceptanceChangedCopyWithImpl(TermsAcceptanceChanged _value,
      $Res Function(TermsAcceptanceChanged) _then)
      : super(_value, (v) => _then(v as TermsAcceptanceChanged));

  @override
  TermsAcceptanceChanged get _value => super._value as TermsAcceptanceChanged;

  @override
  $Res call({
    Object termsAccepted = freezed,
  }) {
    return _then(TermsAcceptanceChanged(
      termsAccepted == freezed ? _value.termsAccepted : termsAccepted as bool,
    ));
  }
}

class _$TermsAcceptanceChanged implements TermsAcceptanceChanged {
  const _$TermsAcceptanceChanged(this.termsAccepted)
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
        (other is TermsAcceptanceChanged &&
            (identical(other.termsAccepted, termsAccepted) ||
                const DeepCollectionEquality()
                    .equals(other.termsAccepted, termsAccepted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(termsAccepted);

  @override
  $TermsAcceptanceChangedCopyWith<TermsAcceptanceChanged> get copyWith =>
      _$TermsAcceptanceChangedCopyWithImpl<TermsAcceptanceChanged>(
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
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
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
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (termsAcceptanceChanged != null) {
      return termsAcceptanceChanged(this);
    }
    return orElse();
  }
}

abstract class TermsAcceptanceChanged implements RegisterEvent {
  const factory TermsAcceptanceChanged(bool termsAccepted) =
      _$TermsAcceptanceChanged;

  bool get termsAccepted;
  $TermsAcceptanceChangedCopyWith<TermsAcceptanceChanged> get copyWith;
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
