// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

// ignore: unused_element
  _SignInWithEmailAndPassword signInWithEmailAndPassword() {
    return const _SignInWithEmailAndPassword();
  }

// ignore: unused_element
  _SignInWithGoogle signInWithGoogle() {
    return const _SignInWithGoogle();
  }

// ignore: unused_element
  _SignInWithFacebook signInWithFacebook() {
    return const _SignInWithFacebook();
  }
}

// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String password),
    @required Result emailChanged(String email),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String password),
    Result emailChanged(String email),
    Result signInWithEmailAndPassword(),
    Result signInWithGoogle(),
    Result signInWithFacebook(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(_PasswordChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(_PasswordChanged value),
    Result emailChanged(_EmailChanged value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    @required Result orElse(),
  });
}

abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
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
    return 'SignInFormEvent.passwordChanged(password: $password)';
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
    @required Result emailChanged(String email),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String password),
    Result emailChanged(String email),
    Result signInWithEmailAndPassword(),
    Result signInWithGoogle(),
    Result signInWithFacebook(),
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
    @required Result emailChanged(_EmailChanged value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(_PasswordChanged value),
    Result emailChanged(_EmailChanged value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInFormEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password;
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class __$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
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
    return 'SignInFormEvent.emailChanged(email: $email)';
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
    @required Result passwordChanged(String password),
    @required Result emailChanged(String email),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String password),
    Result emailChanged(String email),
    Result signInWithEmailAndPassword(),
    Result signInWithGoogle(),
    Result signInWithFacebook(),
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
    @required Result passwordChanged(_PasswordChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(_PasswordChanged value),
    Result emailChanged(_EmailChanged value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFormEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email;
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

abstract class _$SignInWithEmailAndPasswordCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordCopyWith(
          _SignInWithEmailAndPassword value,
          $Res Function(_SignInWithEmailAndPassword) then) =
      __$SignInWithEmailAndPasswordCopyWithImpl<$Res>;
}

class __$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordCopyWith<$Res> {
  __$SignInWithEmailAndPasswordCopyWithImpl(_SignInWithEmailAndPassword _value,
      $Res Function(_SignInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailAndPassword));

  @override
  _SignInWithEmailAndPassword get _value =>
      super._value as _SignInWithEmailAndPassword;
}

class _$_SignInWithEmailAndPassword implements _SignInWithEmailAndPassword {
  const _$_SignInWithEmailAndPassword();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String password),
    @required Result emailChanged(String email),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    return signInWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String password),
    Result emailChanged(String email),
    Result signInWithEmailAndPassword(),
    Result signInWithGoogle(),
    Result signInWithFacebook(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(_PasswordChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(_PasswordChanged value),
    Result emailChanged(_EmailChanged value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPassword implements SignInFormEvent {
  const factory _SignInWithEmailAndPassword() = _$_SignInWithEmailAndPassword;
}

abstract class _$SignInWithGoogleCopyWith<$Res> {
  factory _$SignInWithGoogleCopyWith(
          _SignInWithGoogle value, $Res Function(_SignInWithGoogle) then) =
      __$SignInWithGoogleCopyWithImpl<$Res>;
}

class __$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithGoogleCopyWith<$Res> {
  __$SignInWithGoogleCopyWithImpl(
      _SignInWithGoogle _value, $Res Function(_SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as _SignInWithGoogle));

  @override
  _SignInWithGoogle get _value => super._value as _SignInWithGoogle;
}

class _$_SignInWithGoogle implements _SignInWithGoogle {
  const _$_SignInWithGoogle();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String password),
    @required Result emailChanged(String email),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String password),
    Result emailChanged(String email),
    Result signInWithEmailAndPassword(),
    Result signInWithGoogle(),
    Result signInWithFacebook(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(_PasswordChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(_PasswordChanged value),
    Result emailChanged(_EmailChanged value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements SignInFormEvent {
  const factory _SignInWithGoogle() = _$_SignInWithGoogle;
}

abstract class _$SignInWithFacebookCopyWith<$Res> {
  factory _$SignInWithFacebookCopyWith(
          _SignInWithFacebook value, $Res Function(_SignInWithFacebook) then) =
      __$SignInWithFacebookCopyWithImpl<$Res>;
}

class __$SignInWithFacebookCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithFacebookCopyWith<$Res> {
  __$SignInWithFacebookCopyWithImpl(
      _SignInWithFacebook _value, $Res Function(_SignInWithFacebook) _then)
      : super(_value, (v) => _then(v as _SignInWithFacebook));

  @override
  _SignInWithFacebook get _value => super._value as _SignInWithFacebook;
}

class _$_SignInWithFacebook implements _SignInWithFacebook {
  const _$_SignInWithFacebook();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result passwordChanged(String password),
    @required Result emailChanged(String email),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    return signInWithFacebook();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result passwordChanged(String password),
    Result emailChanged(String email),
    Result signInWithEmailAndPassword(),
    Result signInWithGoogle(),
    Result signInWithFacebook(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebook != null) {
      return signInWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result passwordChanged(_PasswordChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required
        Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(_SignInWithGoogle value),
    @required Result signInWithFacebook(_SignInWithFacebook value),
  }) {
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    return signInWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(_PasswordChanged value),
    Result emailChanged(_EmailChanged value),
    Result signInWithEmailAndPassword(_SignInWithEmailAndPassword value),
    Result signInWithGoogle(_SignInWithGoogle value),
    Result signInWithFacebook(_SignInWithFacebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebook != null) {
      return signInWithFacebook(this);
    }
    return orElse();
  }
}

abstract class _SignInWithFacebook implements SignInFormEvent {
  const factory _SignInWithFacebook() = _$_SignInWithFacebook;
}

class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

mixin _$SignInFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
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
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
