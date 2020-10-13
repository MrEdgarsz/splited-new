// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'check_verification_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CheckVerificationCodeEventTearOff {
  const _$CheckVerificationCodeEventTearOff();

// ignore: unused_element
  _VerificationCodeChanged verificationCodeChanged(String digit, int index) {
    return _VerificationCodeChanged(
      digit,
      index,
    );
  }

// ignore: unused_element
  _VerifyCode verifyCode(EmailAddress emailAddress) {
    return _VerifyCode(
      emailAddress,
    );
  }
}

// ignore: unused_element
const $CheckVerificationCodeEvent = _$CheckVerificationCodeEventTearOff();

mixin _$CheckVerificationCodeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result verificationCodeChanged(String digit, int index),
    @required Result verifyCode(EmailAddress emailAddress),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result verificationCodeChanged(String digit, int index),
    Result verifyCode(EmailAddress emailAddress),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result verificationCodeChanged(_VerificationCodeChanged value),
    @required Result verifyCode(_VerifyCode value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result verificationCodeChanged(_VerificationCodeChanged value),
    Result verifyCode(_VerifyCode value),
    @required Result orElse(),
  });
}

abstract class $CheckVerificationCodeEventCopyWith<$Res> {
  factory $CheckVerificationCodeEventCopyWith(CheckVerificationCodeEvent value,
          $Res Function(CheckVerificationCodeEvent) then) =
      _$CheckVerificationCodeEventCopyWithImpl<$Res>;
}

class _$CheckVerificationCodeEventCopyWithImpl<$Res>
    implements $CheckVerificationCodeEventCopyWith<$Res> {
  _$CheckVerificationCodeEventCopyWithImpl(this._value, this._then);

  final CheckVerificationCodeEvent _value;
  // ignore: unused_field
  final $Res Function(CheckVerificationCodeEvent) _then;
}

abstract class _$VerificationCodeChangedCopyWith<$Res> {
  factory _$VerificationCodeChangedCopyWith(_VerificationCodeChanged value,
          $Res Function(_VerificationCodeChanged) then) =
      __$VerificationCodeChangedCopyWithImpl<$Res>;
  $Res call({String digit, int index});
}

class __$VerificationCodeChangedCopyWithImpl<$Res>
    extends _$CheckVerificationCodeEventCopyWithImpl<$Res>
    implements _$VerificationCodeChangedCopyWith<$Res> {
  __$VerificationCodeChangedCopyWithImpl(_VerificationCodeChanged _value,
      $Res Function(_VerificationCodeChanged) _then)
      : super(_value, (v) => _then(v as _VerificationCodeChanged));

  @override
  _VerificationCodeChanged get _value =>
      super._value as _VerificationCodeChanged;

  @override
  $Res call({
    Object digit = freezed,
    Object index = freezed,
  }) {
    return _then(_VerificationCodeChanged(
      digit == freezed ? _value.digit : digit as String,
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_VerificationCodeChanged implements _VerificationCodeChanged {
  const _$_VerificationCodeChanged(this.digit, this.index)
      : assert(digit != null),
        assert(index != null);

  @override
  final String digit;
  @override
  final int index;

  @override
  String toString() {
    return 'CheckVerificationCodeEvent.verificationCodeChanged(digit: $digit, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerificationCodeChanged &&
            (identical(other.digit, digit) ||
                const DeepCollectionEquality().equals(other.digit, digit)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(digit) ^
      const DeepCollectionEquality().hash(index);

  @override
  _$VerificationCodeChangedCopyWith<_VerificationCodeChanged> get copyWith =>
      __$VerificationCodeChangedCopyWithImpl<_VerificationCodeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result verificationCodeChanged(String digit, int index),
    @required Result verifyCode(EmailAddress emailAddress),
  }) {
    assert(verificationCodeChanged != null);
    assert(verifyCode != null);
    return verificationCodeChanged(digit, index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result verificationCodeChanged(String digit, int index),
    Result verifyCode(EmailAddress emailAddress),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verificationCodeChanged != null) {
      return verificationCodeChanged(digit, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result verificationCodeChanged(_VerificationCodeChanged value),
    @required Result verifyCode(_VerifyCode value),
  }) {
    assert(verificationCodeChanged != null);
    assert(verifyCode != null);
    return verificationCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result verificationCodeChanged(_VerificationCodeChanged value),
    Result verifyCode(_VerifyCode value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verificationCodeChanged != null) {
      return verificationCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _VerificationCodeChanged implements CheckVerificationCodeEvent {
  const factory _VerificationCodeChanged(String digit, int index) =
      _$_VerificationCodeChanged;

  String get digit;
  int get index;
  _$VerificationCodeChangedCopyWith<_VerificationCodeChanged> get copyWith;
}

abstract class _$VerifyCodeCopyWith<$Res> {
  factory _$VerifyCodeCopyWith(
          _VerifyCode value, $Res Function(_VerifyCode) then) =
      __$VerifyCodeCopyWithImpl<$Res>;
  $Res call({EmailAddress emailAddress});
}

class __$VerifyCodeCopyWithImpl<$Res>
    extends _$CheckVerificationCodeEventCopyWithImpl<$Res>
    implements _$VerifyCodeCopyWith<$Res> {
  __$VerifyCodeCopyWithImpl(
      _VerifyCode _value, $Res Function(_VerifyCode) _then)
      : super(_value, (v) => _then(v as _VerifyCode));

  @override
  _VerifyCode get _value => super._value as _VerifyCode;

  @override
  $Res call({
    Object emailAddress = freezed,
  }) {
    return _then(_VerifyCode(
      emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
    ));
  }
}

class _$_VerifyCode implements _VerifyCode {
  const _$_VerifyCode(this.emailAddress) : assert(emailAddress != null);

  @override
  final EmailAddress emailAddress;

  @override
  String toString() {
    return 'CheckVerificationCodeEvent.verifyCode(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyCode &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailAddress);

  @override
  _$VerifyCodeCopyWith<_VerifyCode> get copyWith =>
      __$VerifyCodeCopyWithImpl<_VerifyCode>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result verificationCodeChanged(String digit, int index),
    @required Result verifyCode(EmailAddress emailAddress),
  }) {
    assert(verificationCodeChanged != null);
    assert(verifyCode != null);
    return verifyCode(emailAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result verificationCodeChanged(String digit, int index),
    Result verifyCode(EmailAddress emailAddress),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyCode != null) {
      return verifyCode(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result verificationCodeChanged(_VerificationCodeChanged value),
    @required Result verifyCode(_VerifyCode value),
  }) {
    assert(verificationCodeChanged != null);
    assert(verifyCode != null);
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result verificationCodeChanged(_VerificationCodeChanged value),
    Result verifyCode(_VerifyCode value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyCode implements CheckVerificationCodeEvent {
  const factory _VerifyCode(EmailAddress emailAddress) = _$_VerifyCode;

  EmailAddress get emailAddress;
  _$VerifyCodeCopyWith<_VerifyCode> get copyWith;
}

class _$CheckVerificationCodeStateTearOff {
  const _$CheckVerificationCodeStateTearOff();

// ignore: unused_element
  _CheckVerificationCodeState call(
      {@required VerificationCode verificationCode,
      @required bool isSubmitting,
      @required bool showErrors,
      @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) {
    return _CheckVerificationCodeState(
      verificationCode: verificationCode,
      isSubmitting: isSubmitting,
      showErrors: showErrors,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $CheckVerificationCodeState = _$CheckVerificationCodeStateTearOff();

mixin _$CheckVerificationCodeState {
  VerificationCode get verificationCode;
  bool get isSubmitting;
  bool get showErrors;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;

  $CheckVerificationCodeStateCopyWith<CheckVerificationCodeState> get copyWith;
}

abstract class $CheckVerificationCodeStateCopyWith<$Res> {
  factory $CheckVerificationCodeStateCopyWith(CheckVerificationCodeState value,
          $Res Function(CheckVerificationCodeState) then) =
      _$CheckVerificationCodeStateCopyWithImpl<$Res>;
  $Res call(
      {VerificationCode verificationCode,
      bool isSubmitting,
      bool showErrors,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

class _$CheckVerificationCodeStateCopyWithImpl<$Res>
    implements $CheckVerificationCodeStateCopyWith<$Res> {
  _$CheckVerificationCodeStateCopyWithImpl(this._value, this._then);

  final CheckVerificationCodeState _value;
  // ignore: unused_field
  final $Res Function(CheckVerificationCodeState) _then;

  @override
  $Res call({
    Object verificationCode = freezed,
    Object isSubmitting = freezed,
    Object showErrors = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode as VerificationCode,
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

abstract class _$CheckVerificationCodeStateCopyWith<$Res>
    implements $CheckVerificationCodeStateCopyWith<$Res> {
  factory _$CheckVerificationCodeStateCopyWith(
          _CheckVerificationCodeState value,
          $Res Function(_CheckVerificationCodeState) then) =
      __$CheckVerificationCodeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {VerificationCode verificationCode,
      bool isSubmitting,
      bool showErrors,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

class __$CheckVerificationCodeStateCopyWithImpl<$Res>
    extends _$CheckVerificationCodeStateCopyWithImpl<$Res>
    implements _$CheckVerificationCodeStateCopyWith<$Res> {
  __$CheckVerificationCodeStateCopyWithImpl(_CheckVerificationCodeState _value,
      $Res Function(_CheckVerificationCodeState) _then)
      : super(_value, (v) => _then(v as _CheckVerificationCodeState));

  @override
  _CheckVerificationCodeState get _value =>
      super._value as _CheckVerificationCodeState;

  @override
  $Res call({
    Object verificationCode = freezed,
    Object isSubmitting = freezed,
    Object showErrors = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_CheckVerificationCodeState(
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode as VerificationCode,
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

class _$_CheckVerificationCodeState implements _CheckVerificationCodeState {
  const _$_CheckVerificationCodeState(
      {@required this.verificationCode,
      @required this.isSubmitting,
      @required this.showErrors,
      @required this.failureOrSuccessOption})
      : assert(verificationCode != null),
        assert(isSubmitting != null),
        assert(showErrors != null),
        assert(failureOrSuccessOption != null);

  @override
  final VerificationCode verificationCode;
  @override
  final bool isSubmitting;
  @override
  final bool showErrors;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'CheckVerificationCodeState(verificationCode: $verificationCode, isSubmitting: $isSubmitting, showErrors: $showErrors, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckVerificationCodeState &&
            (identical(other.verificationCode, verificationCode) ||
                const DeepCollectionEquality()
                    .equals(other.verificationCode, verificationCode)) &&
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
      const DeepCollectionEquality().hash(verificationCode) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrors) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$CheckVerificationCodeStateCopyWith<_CheckVerificationCodeState>
      get copyWith => __$CheckVerificationCodeStateCopyWithImpl<
          _CheckVerificationCodeState>(this, _$identity);
}

abstract class _CheckVerificationCodeState
    implements CheckVerificationCodeState {
  const factory _CheckVerificationCodeState(
          {@required VerificationCode verificationCode,
          @required bool isSubmitting,
          @required bool showErrors,
          @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) =
      _$_CheckVerificationCodeState;

  @override
  VerificationCode get verificationCode;
  @override
  bool get isSubmitting;
  @override
  bool get showErrors;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  @override
  _$CheckVerificationCodeStateCopyWith<_CheckVerificationCodeState>
      get copyWith;
}
