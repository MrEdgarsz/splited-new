// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'linking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LinkingEventTearOff {
  const _$LinkingEventTearOff();

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

// ignore: unused_element
  LinkAccounts linkAccounts(AccountType type) {
    return LinkAccounts(
      type,
    );
  }
}

// ignore: unused_element
const $LinkingEvent = _$LinkingEventTearOff();

mixin _$LinkingEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
    @required Result linkAccounts(AccountType type),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
    Result linkAccounts(AccountType type),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result linkAccounts(LinkAccounts value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    Result linkAccounts(LinkAccounts value),
    @required Result orElse(),
  });
}

abstract class $LinkingEventCopyWith<$Res> {
  factory $LinkingEventCopyWith(
          LinkingEvent value, $Res Function(LinkingEvent) then) =
      _$LinkingEventCopyWithImpl<$Res>;
}

class _$LinkingEventCopyWithImpl<$Res> implements $LinkingEventCopyWith<$Res> {
  _$LinkingEventCopyWithImpl(this._value, this._then);

  final LinkingEvent _value;
  // ignore: unused_field
  final $Res Function(LinkingEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$LinkingEventCopyWithImpl<$Res>
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
    return 'LinkingEvent.emailChanged(email: $email)';
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
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
    @required Result linkAccounts(AccountType type),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    assert(linkAccounts != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
    Result linkAccounts(AccountType type),
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
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result linkAccounts(LinkAccounts value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    assert(linkAccounts != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    Result linkAccounts(LinkAccounts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements LinkingEvent {
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
    extends _$LinkingEventCopyWithImpl<$Res>
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
    return 'LinkingEvent.passwordChanged(password: $password)';
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
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
    @required Result linkAccounts(AccountType type),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    assert(linkAccounts != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
    Result linkAccounts(AccountType type),
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
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result linkAccounts(LinkAccounts value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    assert(linkAccounts != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    Result linkAccounts(LinkAccounts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LinkingEvent {
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
    extends _$LinkingEventCopyWithImpl<$Res>
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
    return 'LinkingEvent.passwordRepeatChanged(passwordRepeat: $passwordRepeat)';
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
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
    @required Result linkAccounts(AccountType type),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    assert(linkAccounts != null);
    return passwordRepeatChanged(passwordRepeat);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
    Result linkAccounts(AccountType type),
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
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result linkAccounts(LinkAccounts value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    assert(linkAccounts != null);
    return passwordRepeatChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    Result linkAccounts(LinkAccounts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordRepeatChanged != null) {
      return passwordRepeatChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordRepeatChanged implements LinkingEvent {
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
    extends _$LinkingEventCopyWithImpl<$Res>
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
    return 'LinkingEvent.termsAcceptanceChanged(termsAccepted: $termsAccepted)';
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
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
    @required Result linkAccounts(AccountType type),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    assert(linkAccounts != null);
    return termsAcceptanceChanged(termsAccepted);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
    Result linkAccounts(AccountType type),
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
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result linkAccounts(LinkAccounts value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    assert(linkAccounts != null);
    return termsAcceptanceChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    Result linkAccounts(LinkAccounts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (termsAcceptanceChanged != null) {
      return termsAcceptanceChanged(this);
    }
    return orElse();
  }
}

abstract class TermsAcceptanceChanged implements LinkingEvent {
  const factory TermsAcceptanceChanged(bool termsAccepted) =
      _$TermsAcceptanceChanged;

  bool get termsAccepted;
  $TermsAcceptanceChangedCopyWith<TermsAcceptanceChanged> get copyWith;
}

abstract class $LinkAccountsCopyWith<$Res> {
  factory $LinkAccountsCopyWith(
          LinkAccounts value, $Res Function(LinkAccounts) then) =
      _$LinkAccountsCopyWithImpl<$Res>;
  $Res call({AccountType type});

  $AccountTypeCopyWith<$Res> get type;
}

class _$LinkAccountsCopyWithImpl<$Res> extends _$LinkingEventCopyWithImpl<$Res>
    implements $LinkAccountsCopyWith<$Res> {
  _$LinkAccountsCopyWithImpl(
      LinkAccounts _value, $Res Function(LinkAccounts) _then)
      : super(_value, (v) => _then(v as LinkAccounts));

  @override
  LinkAccounts get _value => super._value as LinkAccounts;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(LinkAccounts(
      type == freezed ? _value.type : type as AccountType,
    ));
  }

  @override
  $AccountTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $AccountTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

class _$LinkAccounts implements LinkAccounts {
  const _$LinkAccounts(this.type) : assert(type != null);

  @override
  final AccountType type;

  @override
  String toString() {
    return 'LinkingEvent.linkAccounts(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LinkAccounts &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @override
  $LinkAccountsCopyWith<LinkAccounts> get copyWith =>
      _$LinkAccountsCopyWithImpl<LinkAccounts>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result passwordRepeatChanged(String passwordRepeat),
    @required Result termsAcceptanceChanged(bool termsAccepted),
    @required Result linkAccounts(AccountType type),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    assert(linkAccounts != null);
    return linkAccounts(type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result passwordRepeatChanged(String passwordRepeat),
    Result termsAcceptanceChanged(bool termsAccepted),
    Result linkAccounts(AccountType type),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (linkAccounts != null) {
      return linkAccounts(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result passwordRepeatChanged(PasswordRepeatChanged value),
    @required Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    @required Result linkAccounts(LinkAccounts value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordRepeatChanged != null);
    assert(termsAcceptanceChanged != null);
    assert(linkAccounts != null);
    return linkAccounts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result passwordRepeatChanged(PasswordRepeatChanged value),
    Result termsAcceptanceChanged(TermsAcceptanceChanged value),
    Result linkAccounts(LinkAccounts value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (linkAccounts != null) {
      return linkAccounts(this);
    }
    return orElse();
  }
}

abstract class LinkAccounts implements LinkingEvent {
  const factory LinkAccounts(AccountType type) = _$LinkAccounts;

  AccountType get type;
  $LinkAccountsCopyWith<LinkAccounts> get copyWith;
}

class _$LinkingStateTearOff {
  const _$LinkingStateTearOff();

// ignore: unused_element
  _LinkingState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required Password passwordRepeat,
      @required bool isSubmitting,
      @required bool showErrors,
      @required bool termsAccepted,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _LinkingState(
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
const $LinkingState = _$LinkingStateTearOff();

mixin _$LinkingState {
  EmailAddress get emailAddress;
  Password get password;
  Password get passwordRepeat;
  bool get isSubmitting;
  bool get showErrors;
  bool get termsAccepted;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $LinkingStateCopyWith<LinkingState> get copyWith;
}

abstract class $LinkingStateCopyWith<$Res> {
  factory $LinkingStateCopyWith(
          LinkingState value, $Res Function(LinkingState) then) =
      _$LinkingStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Password passwordRepeat,
      bool isSubmitting,
      bool showErrors,
      bool termsAccepted,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$LinkingStateCopyWithImpl<$Res> implements $LinkingStateCopyWith<$Res> {
  _$LinkingStateCopyWithImpl(this._value, this._then);

  final LinkingState _value;
  // ignore: unused_field
  final $Res Function(LinkingState) _then;

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

abstract class _$LinkingStateCopyWith<$Res>
    implements $LinkingStateCopyWith<$Res> {
  factory _$LinkingStateCopyWith(
          _LinkingState value, $Res Function(_LinkingState) then) =
      __$LinkingStateCopyWithImpl<$Res>;
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

class __$LinkingStateCopyWithImpl<$Res> extends _$LinkingStateCopyWithImpl<$Res>
    implements _$LinkingStateCopyWith<$Res> {
  __$LinkingStateCopyWithImpl(
      _LinkingState _value, $Res Function(_LinkingState) _then)
      : super(_value, (v) => _then(v as _LinkingState));

  @override
  _LinkingState get _value => super._value as _LinkingState;

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
    return _then(_LinkingState(
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

class _$_LinkingState implements _LinkingState {
  const _$_LinkingState(
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
    return 'LinkingState(emailAddress: $emailAddress, password: $password, passwordRepeat: $passwordRepeat, isSubmitting: $isSubmitting, showErrors: $showErrors, termsAccepted: $termsAccepted, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkingState &&
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
  _$LinkingStateCopyWith<_LinkingState> get copyWith =>
      __$LinkingStateCopyWithImpl<_LinkingState>(this, _$identity);
}

abstract class _LinkingState implements LinkingState {
  const factory _LinkingState(
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
      _$_LinkingState;

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
  _$LinkingStateCopyWith<_LinkingState> get copyWith;
}
