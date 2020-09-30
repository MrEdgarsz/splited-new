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
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  SignInWithEmailAndPassword signInWithEmailAndPassword() {
    return const SignInWithEmailAndPassword();
  }

// ignore: unused_element
  SignInWithGoogle signInWithGoogle() {
    return const SignInWithGoogle();
  }

// ignore: unused_element
  SignInWithFacebook signInWithFacebook() {
    return const SignInWithFacebook();
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
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
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

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
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
    return 'SignInFormEvent.passwordChanged(password: $password)';
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
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
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
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
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
    return 'SignInFormEvent.emailChanged(email: $email)';
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
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
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
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $SignInWithEmailAndPasswordCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordCopyWith(SignInWithEmailAndPassword value,
          $Res Function(SignInWithEmailAndPassword) then) =
      _$SignInWithEmailAndPasswordCopyWithImpl<$Res>;
}

class _$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordCopyWith<$Res> {
  _$SignInWithEmailAndPasswordCopyWithImpl(SignInWithEmailAndPassword _value,
      $Res Function(SignInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPassword));

  @override
  SignInWithEmailAndPassword get _value =>
      super._value as SignInWithEmailAndPassword;
}

class _$SignInWithEmailAndPassword implements SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPassword();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmailAndPassword);
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
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
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
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements SignInFormEvent {
  const factory SignInWithEmailAndPassword() = _$SignInWithEmailAndPassword;
}

abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res>;
}

class _$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(
      SignInWithGoogle _value, $Res Function(SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as SignInWithGoogle));

  @override
  SignInWithGoogle get _value => super._value as SignInWithGoogle;
}

class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGoogle);
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
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
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
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements SignInFormEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

abstract class $SignInWithFacebookCopyWith<$Res> {
  factory $SignInWithFacebookCopyWith(
          SignInWithFacebook value, $Res Function(SignInWithFacebook) then) =
      _$SignInWithFacebookCopyWithImpl<$Res>;
}

class _$SignInWithFacebookCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithFacebookCopyWith<$Res> {
  _$SignInWithFacebookCopyWithImpl(
      SignInWithFacebook _value, $Res Function(SignInWithFacebook) _then)
      : super(_value, (v) => _then(v as SignInWithFacebook));

  @override
  SignInWithFacebook get _value => super._value as SignInWithFacebook;
}

class _$SignInWithFacebook implements SignInWithFacebook {
  const _$SignInWithFacebook();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithFacebook);
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
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailChanged value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
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
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebook != null) {
      return signInWithFacebook(this);
    }
    return orElse();
  }
}

abstract class SignInWithFacebook implements SignInFormEvent {
  const factory SignInWithFacebook() = _$SignInWithFacebook;
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
