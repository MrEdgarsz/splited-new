// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({@required String filedValue}) {
    return InvalidEmail<T>(
      filedValue: filedValue,
    );
  }

  InvalidPassowrd<T> invalidPassword<T>({@required String filedValue}) {
    return InvalidPassowrd<T>(
      filedValue: filedValue,
    );
  }

  InvalidVerificationCode<T> invalidPasswordChangeCode<T>(
      {@required int filedValue}) {
    return InvalidVerificationCode<T>(
      filedValue: filedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String filedValue),
    @required Result invalidPassword(String filedValue),
    @required Result invalidPasswordChangeCode(int filedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String filedValue),
    Result invalidPassword(String filedValue),
    Result invalidPasswordChangeCode(int filedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassowrd<T> value),
    @required
        Result invalidPasswordChangeCode(InvalidVerificationCode<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassowrd<T> value),
    Result invalidPasswordChangeCode(InvalidVerificationCode<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String filedValue});
}

class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object filedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      filedValue:
          filedValue == freezed ? _value.filedValue : filedValue as String,
    ));
  }
}

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.filedValue})
      : assert(filedValue != null);

  @override
  final String filedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(filedValue: $filedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.filedValue, filedValue) ||
                const DeepCollectionEquality()
                    .equals(other.filedValue, filedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String filedValue),
    @required Result invalidPassword(String filedValue),
    @required Result invalidPasswordChangeCode(int filedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidPasswordChangeCode != null);
    return invalidEmail(filedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String filedValue),
    Result invalidPassword(String filedValue),
    Result invalidPasswordChangeCode(int filedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(filedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassowrd<T> value),
    @required
        Result invalidPasswordChangeCode(InvalidVerificationCode<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidPasswordChangeCode != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassowrd<T> value),
    Result invalidPasswordChangeCode(InvalidVerificationCode<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required String filedValue}) = _$InvalidEmail<T>;

  String get filedValue;
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

abstract class $InvalidPassowrdCopyWith<T, $Res> {
  factory $InvalidPassowrdCopyWith(
          InvalidPassowrd<T> value, $Res Function(InvalidPassowrd<T>) then) =
      _$InvalidPassowrdCopyWithImpl<T, $Res>;
  $Res call({String filedValue});
}

class _$InvalidPassowrdCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPassowrdCopyWith<T, $Res> {
  _$InvalidPassowrdCopyWithImpl(
      InvalidPassowrd<T> _value, $Res Function(InvalidPassowrd<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassowrd<T>));

  @override
  InvalidPassowrd<T> get _value => super._value as InvalidPassowrd<T>;

  @override
  $Res call({
    Object filedValue = freezed,
  }) {
    return _then(InvalidPassowrd<T>(
      filedValue:
          filedValue == freezed ? _value.filedValue : filedValue as String,
    ));
  }
}

class _$InvalidPassowrd<T> implements InvalidPassowrd<T> {
  const _$InvalidPassowrd({@required this.filedValue})
      : assert(filedValue != null);

  @override
  final String filedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(filedValue: $filedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassowrd<T> &&
            (identical(other.filedValue, filedValue) ||
                const DeepCollectionEquality()
                    .equals(other.filedValue, filedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filedValue);

  @override
  $InvalidPassowrdCopyWith<T, InvalidPassowrd<T>> get copyWith =>
      _$InvalidPassowrdCopyWithImpl<T, InvalidPassowrd<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String filedValue),
    @required Result invalidPassword(String filedValue),
    @required Result invalidPasswordChangeCode(int filedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidPasswordChangeCode != null);
    return invalidPassword(filedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String filedValue),
    Result invalidPassword(String filedValue),
    Result invalidPasswordChangeCode(int filedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(filedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassowrd<T> value),
    @required
        Result invalidPasswordChangeCode(InvalidVerificationCode<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidPasswordChangeCode != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassowrd<T> value),
    Result invalidPasswordChangeCode(InvalidVerificationCode<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassowrd<T> implements ValueFailure<T> {
  const factory InvalidPassowrd({@required String filedValue}) =
      _$InvalidPassowrd<T>;

  String get filedValue;
  $InvalidPassowrdCopyWith<T, InvalidPassowrd<T>> get copyWith;
}

abstract class $InvalidVerificationCodeCopyWith<T, $Res> {
  factory $InvalidVerificationCodeCopyWith(InvalidVerificationCode<T> value,
          $Res Function(InvalidVerificationCode<T>) then) =
      _$InvalidVerificationCodeCopyWithImpl<T, $Res>;
  $Res call({int filedValue});
}

class _$InvalidVerificationCodeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidVerificationCodeCopyWith<T, $Res> {
  _$InvalidVerificationCodeCopyWithImpl(InvalidVerificationCode<T> _value,
      $Res Function(InvalidVerificationCode<T>) _then)
      : super(_value, (v) => _then(v as InvalidVerificationCode<T>));

  @override
  InvalidVerificationCode<T> get _value =>
      super._value as InvalidVerificationCode<T>;

  @override
  $Res call({
    Object filedValue = freezed,
  }) {
    return _then(InvalidVerificationCode<T>(
      filedValue: filedValue == freezed ? _value.filedValue : filedValue as int,
    ));
  }
}

class _$InvalidVerificationCode<T> implements InvalidVerificationCode<T> {
  const _$InvalidVerificationCode({@required this.filedValue})
      : assert(filedValue != null);

  @override
  final int filedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPasswordChangeCode(filedValue: $filedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidVerificationCode<T> &&
            (identical(other.filedValue, filedValue) ||
                const DeepCollectionEquality()
                    .equals(other.filedValue, filedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filedValue);

  @override
  $InvalidVerificationCodeCopyWith<T, InvalidVerificationCode<T>>
      get copyWith =>
          _$InvalidVerificationCodeCopyWithImpl<T, InvalidVerificationCode<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String filedValue),
    @required Result invalidPassword(String filedValue),
    @required Result invalidPasswordChangeCode(int filedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidPasswordChangeCode != null);
    return invalidPasswordChangeCode(filedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String filedValue),
    Result invalidPassword(String filedValue),
    Result invalidPasswordChangeCode(int filedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPasswordChangeCode != null) {
      return invalidPasswordChangeCode(filedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassowrd<T> value),
    @required
        Result invalidPasswordChangeCode(InvalidVerificationCode<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidPasswordChangeCode != null);
    return invalidPasswordChangeCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassowrd<T> value),
    Result invalidPasswordChangeCode(InvalidVerificationCode<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPasswordChangeCode != null) {
      return invalidPasswordChangeCode(this);
    }
    return orElse();
  }
}

abstract class InvalidVerificationCode<T> implements ValueFailure<T> {
  const factory InvalidVerificationCode({@required int filedValue}) =
      _$InvalidVerificationCode<T>;

  int get filedValue;
  $InvalidVerificationCodeCopyWith<T, InvalidVerificationCode<T>> get copyWith;
}
