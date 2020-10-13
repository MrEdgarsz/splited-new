// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'send_verification_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SendVerificationCodeEventTearOff {
  const _$SendVerificationCodeEventTearOff();

// ignore: unused_element
  _EmailAddressChanged emailAddressChanged(String emailAddress) {
    return _EmailAddressChanged(
      emailAddress,
    );
  }

// ignore: unused_element
  _SendVerificationCode sendVerificationCode() {
    return const _SendVerificationCode();
  }
}

// ignore: unused_element
const $SendVerificationCodeEvent = _$SendVerificationCodeEventTearOff();

mixin _$SendVerificationCodeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailAddressChanged(String emailAddress),
    @required Result sendVerificationCode(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailAddressChanged(String emailAddress),
    Result sendVerificationCode(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result sendVerificationCode(_SendVerificationCode value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailAddressChanged(_EmailAddressChanged value),
    Result sendVerificationCode(_SendVerificationCode value),
    @required Result orElse(),
  });
}

abstract class $SendVerificationCodeEventCopyWith<$Res> {
  factory $SendVerificationCodeEventCopyWith(SendVerificationCodeEvent value,
          $Res Function(SendVerificationCodeEvent) then) =
      _$SendVerificationCodeEventCopyWithImpl<$Res>;
}

class _$SendVerificationCodeEventCopyWithImpl<$Res>
    implements $SendVerificationCodeEventCopyWith<$Res> {
  _$SendVerificationCodeEventCopyWithImpl(this._value, this._then);

  final SendVerificationCodeEvent _value;
  // ignore: unused_field
  final $Res Function(SendVerificationCodeEvent) _then;
}

abstract class _$EmailAddressChangedCopyWith<$Res> {
  factory _$EmailAddressChangedCopyWith(_EmailAddressChanged value,
          $Res Function(_EmailAddressChanged) then) =
      __$EmailAddressChangedCopyWithImpl<$Res>;
  $Res call({String emailAddress});
}

class __$EmailAddressChangedCopyWithImpl<$Res>
    extends _$SendVerificationCodeEventCopyWithImpl<$Res>
    implements _$EmailAddressChangedCopyWith<$Res> {
  __$EmailAddressChangedCopyWithImpl(
      _EmailAddressChanged _value, $Res Function(_EmailAddressChanged) _then)
      : super(_value, (v) => _then(v as _EmailAddressChanged));

  @override
  _EmailAddressChanged get _value => super._value as _EmailAddressChanged;

  @override
  $Res call({
    Object emailAddress = freezed,
  }) {
    return _then(_EmailAddressChanged(
      emailAddress == freezed ? _value.emailAddress : emailAddress as String,
    ));
  }
}

class _$_EmailAddressChanged implements _EmailAddressChanged {
  const _$_EmailAddressChanged(this.emailAddress)
      : assert(emailAddress != null);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'SendVerificationCodeEvent.emailAddressChanged(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailAddressChanged &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailAddress);

  @override
  _$EmailAddressChangedCopyWith<_EmailAddressChanged> get copyWith =>
      __$EmailAddressChangedCopyWithImpl<_EmailAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailAddressChanged(String emailAddress),
    @required Result sendVerificationCode(),
  }) {
    assert(emailAddressChanged != null);
    assert(sendVerificationCode != null);
    return emailAddressChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailAddressChanged(String emailAddress),
    Result sendVerificationCode(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAddressChanged != null) {
      return emailAddressChanged(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result sendVerificationCode(_SendVerificationCode value),
  }) {
    assert(emailAddressChanged != null);
    assert(sendVerificationCode != null);
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailAddressChanged(_EmailAddressChanged value),
    Result sendVerificationCode(_SendVerificationCode value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailAddressChanged implements SendVerificationCodeEvent {
  const factory _EmailAddressChanged(String emailAddress) =
      _$_EmailAddressChanged;

  String get emailAddress;
  _$EmailAddressChangedCopyWith<_EmailAddressChanged> get copyWith;
}

abstract class _$SendVerificationCodeCopyWith<$Res> {
  factory _$SendVerificationCodeCopyWith(_SendVerificationCode value,
          $Res Function(_SendVerificationCode) then) =
      __$SendVerificationCodeCopyWithImpl<$Res>;
}

class __$SendVerificationCodeCopyWithImpl<$Res>
    extends _$SendVerificationCodeEventCopyWithImpl<$Res>
    implements _$SendVerificationCodeCopyWith<$Res> {
  __$SendVerificationCodeCopyWithImpl(
      _SendVerificationCode _value, $Res Function(_SendVerificationCode) _then)
      : super(_value, (v) => _then(v as _SendVerificationCode));

  @override
  _SendVerificationCode get _value => super._value as _SendVerificationCode;
}

class _$_SendVerificationCode implements _SendVerificationCode {
  const _$_SendVerificationCode();

  @override
  String toString() {
    return 'SendVerificationCodeEvent.sendVerificationCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SendVerificationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailAddressChanged(String emailAddress),
    @required Result sendVerificationCode(),
  }) {
    assert(emailAddressChanged != null);
    assert(sendVerificationCode != null);
    return sendVerificationCode();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailAddressChanged(String emailAddress),
    Result sendVerificationCode(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendVerificationCode != null) {
      return sendVerificationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailAddressChanged(_EmailAddressChanged value),
    @required Result sendVerificationCode(_SendVerificationCode value),
  }) {
    assert(emailAddressChanged != null);
    assert(sendVerificationCode != null);
    return sendVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailAddressChanged(_EmailAddressChanged value),
    Result sendVerificationCode(_SendVerificationCode value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendVerificationCode != null) {
      return sendVerificationCode(this);
    }
    return orElse();
  }
}

abstract class _SendVerificationCode implements SendVerificationCodeEvent {
  const factory _SendVerificationCode() = _$_SendVerificationCode;
}

class _$SendVerificationCodeStateTearOff {
  const _$SendVerificationCodeStateTearOff();

// ignore: unused_element
  _SendVerificationCodeState call(
      {@required EmailAddress emailAddress,
      @required bool isSubmitting,
      @required bool showErrors,
      @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) {
    return _SendVerificationCodeState(
      emailAddress: emailAddress,
      isSubmitting: isSubmitting,
      showErrors: showErrors,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SendVerificationCodeState = _$SendVerificationCodeStateTearOff();

mixin _$SendVerificationCodeState {
  EmailAddress get emailAddress;
  bool get isSubmitting;
  bool get showErrors;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;

  $SendVerificationCodeStateCopyWith<SendVerificationCodeState> get copyWith;
}

abstract class $SendVerificationCodeStateCopyWith<$Res> {
  factory $SendVerificationCodeStateCopyWith(SendVerificationCodeState value,
          $Res Function(SendVerificationCodeState) then) =
      _$SendVerificationCodeStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      bool isSubmitting,
      bool showErrors,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

class _$SendVerificationCodeStateCopyWithImpl<$Res>
    implements $SendVerificationCodeStateCopyWith<$Res> {
  _$SendVerificationCodeStateCopyWithImpl(this._value, this._then);

  final SendVerificationCodeState _value;
  // ignore: unused_field
  final $Res Function(SendVerificationCodeState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object isSubmitting = freezed,
    Object showErrors = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
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

abstract class _$SendVerificationCodeStateCopyWith<$Res>
    implements $SendVerificationCodeStateCopyWith<$Res> {
  factory _$SendVerificationCodeStateCopyWith(_SendVerificationCodeState value,
          $Res Function(_SendVerificationCodeState) then) =
      __$SendVerificationCodeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      bool isSubmitting,
      bool showErrors,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

class __$SendVerificationCodeStateCopyWithImpl<$Res>
    extends _$SendVerificationCodeStateCopyWithImpl<$Res>
    implements _$SendVerificationCodeStateCopyWith<$Res> {
  __$SendVerificationCodeStateCopyWithImpl(_SendVerificationCodeState _value,
      $Res Function(_SendVerificationCodeState) _then)
      : super(_value, (v) => _then(v as _SendVerificationCodeState));

  @override
  _SendVerificationCodeState get _value =>
      super._value as _SendVerificationCodeState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object isSubmitting = freezed,
    Object showErrors = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_SendVerificationCodeState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
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

class _$_SendVerificationCodeState implements _SendVerificationCodeState {
  const _$_SendVerificationCodeState(
      {@required this.emailAddress,
      @required this.isSubmitting,
      @required this.showErrors,
      @required this.failureOrSuccessOption})
      : assert(emailAddress != null),
        assert(isSubmitting != null),
        assert(showErrors != null),
        assert(failureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final bool isSubmitting;
  @override
  final bool showErrors;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'SendVerificationCodeState(emailAddress: $emailAddress, isSubmitting: $isSubmitting, showErrors: $showErrors, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendVerificationCodeState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
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
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrors) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$SendVerificationCodeStateCopyWith<_SendVerificationCodeState>
      get copyWith =>
          __$SendVerificationCodeStateCopyWithImpl<_SendVerificationCodeState>(
              this, _$identity);
}

abstract class _SendVerificationCodeState implements SendVerificationCodeState {
  const factory _SendVerificationCodeState(
          {@required EmailAddress emailAddress,
          @required bool isSubmitting,
          @required bool showErrors,
          @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) =
      _$_SendVerificationCodeState;

  @override
  EmailAddress get emailAddress;
  @override
  bool get isSubmitting;
  @override
  bool get showErrors;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  @override
  _$SendVerificationCodeStateCopyWith<_SendVerificationCodeState> get copyWith;
}
