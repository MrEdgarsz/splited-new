// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  _InvalidEmail<T> invalidEmail<T>({@required String filedValue}) {
    return _InvalidEmail<T>(
      filedValue: filedValue,
    );
  }

// ignore: unused_element
  _InvalidPassowrd<T> invalidPassword<T>({@required String filedValue}) {
    return _InvalidPassowrd<T>(
      filedValue: filedValue,
    );
  }

// ignore: unused_element
  _InvalidVerificationCode<T> invalidVerificationCode<T>(
      {@required List<String> filedValue}) {
    return _InvalidVerificationCode<T>(
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
    @required Result invalidVerificationCode(List<String> filedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String filedValue),
    Result invalidPassword(String filedValue),
    Result invalidVerificationCode(List<String> filedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result invalidPassword(_InvalidPassowrd<T> value),
    @required Result invalidVerificationCode(_InvalidVerificationCode<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result invalidPassword(_InvalidPassowrd<T> value),
    Result invalidVerificationCode(_InvalidVerificationCode<T> value),
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

abstract class _$InvalidEmailCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String filedValue});
}

class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;

  @override
  $Res call({
    Object filedValue = freezed,
  }) {
    return _then(_InvalidEmail<T>(
      filedValue:
          filedValue == freezed ? _value.filedValue : filedValue as String,
    ));
  }
}

class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail({@required this.filedValue})
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
        (other is _InvalidEmail<T> &&
            (identical(other.filedValue, filedValue) ||
                const DeepCollectionEquality()
                    .equals(other.filedValue, filedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filedValue);

  @override
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String filedValue),
    @required Result invalidPassword(String filedValue),
    @required Result invalidVerificationCode(List<String> filedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidVerificationCode != null);
    return invalidEmail(filedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String filedValue),
    Result invalidPassword(String filedValue),
    Result invalidVerificationCode(List<String> filedValue),
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
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result invalidPassword(_InvalidPassowrd<T> value),
    @required Result invalidVerificationCode(_InvalidVerificationCode<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidVerificationCode != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result invalidPassword(_InvalidPassowrd<T> value),
    Result invalidVerificationCode(_InvalidVerificationCode<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail({@required String filedValue}) =
      _$_InvalidEmail<T>;

  String get filedValue;
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith;
}

abstract class _$InvalidPassowrdCopyWith<T, $Res> {
  factory _$InvalidPassowrdCopyWith(
          _InvalidPassowrd<T> value, $Res Function(_InvalidPassowrd<T>) then) =
      __$InvalidPassowrdCopyWithImpl<T, $Res>;
  $Res call({String filedValue});
}

class __$InvalidPassowrdCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidPassowrdCopyWith<T, $Res> {
  __$InvalidPassowrdCopyWithImpl(
      _InvalidPassowrd<T> _value, $Res Function(_InvalidPassowrd<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPassowrd<T>));

  @override
  _InvalidPassowrd<T> get _value => super._value as _InvalidPassowrd<T>;

  @override
  $Res call({
    Object filedValue = freezed,
  }) {
    return _then(_InvalidPassowrd<T>(
      filedValue:
          filedValue == freezed ? _value.filedValue : filedValue as String,
    ));
  }
}

class _$_InvalidPassowrd<T> implements _InvalidPassowrd<T> {
  const _$_InvalidPassowrd({@required this.filedValue})
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
        (other is _InvalidPassowrd<T> &&
            (identical(other.filedValue, filedValue) ||
                const DeepCollectionEquality()
                    .equals(other.filedValue, filedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filedValue);

  @override
  _$InvalidPassowrdCopyWith<T, _InvalidPassowrd<T>> get copyWith =>
      __$InvalidPassowrdCopyWithImpl<T, _InvalidPassowrd<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String filedValue),
    @required Result invalidPassword(String filedValue),
    @required Result invalidVerificationCode(List<String> filedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidVerificationCode != null);
    return invalidPassword(filedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String filedValue),
    Result invalidPassword(String filedValue),
    Result invalidVerificationCode(List<String> filedValue),
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
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result invalidPassword(_InvalidPassowrd<T> value),
    @required Result invalidVerificationCode(_InvalidVerificationCode<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidVerificationCode != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result invalidPassword(_InvalidPassowrd<T> value),
    Result invalidVerificationCode(_InvalidVerificationCode<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class _InvalidPassowrd<T> implements ValueFailure<T> {
  const factory _InvalidPassowrd({@required String filedValue}) =
      _$_InvalidPassowrd<T>;

  String get filedValue;
  _$InvalidPassowrdCopyWith<T, _InvalidPassowrd<T>> get copyWith;
}

abstract class _$InvalidVerificationCodeCopyWith<T, $Res> {
  factory _$InvalidVerificationCodeCopyWith(_InvalidVerificationCode<T> value,
          $Res Function(_InvalidVerificationCode<T>) then) =
      __$InvalidVerificationCodeCopyWithImpl<T, $Res>;
  $Res call({List<String> filedValue});
}

class __$InvalidVerificationCodeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidVerificationCodeCopyWith<T, $Res> {
  __$InvalidVerificationCodeCopyWithImpl(_InvalidVerificationCode<T> _value,
      $Res Function(_InvalidVerificationCode<T>) _then)
      : super(_value, (v) => _then(v as _InvalidVerificationCode<T>));

  @override
  _InvalidVerificationCode<T> get _value =>
      super._value as _InvalidVerificationCode<T>;

  @override
  $Res call({
    Object filedValue = freezed,
  }) {
    return _then(_InvalidVerificationCode<T>(
      filedValue: filedValue == freezed
          ? _value.filedValue
          : filedValue as List<String>,
    ));
  }
}

class _$_InvalidVerificationCode<T> implements _InvalidVerificationCode<T> {
  const _$_InvalidVerificationCode({@required this.filedValue})
      : assert(filedValue != null);

  @override
  final List<String> filedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidVerificationCode(filedValue: $filedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidVerificationCode<T> &&
            (identical(other.filedValue, filedValue) ||
                const DeepCollectionEquality()
                    .equals(other.filedValue, filedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filedValue);

  @override
  _$InvalidVerificationCodeCopyWith<T, _InvalidVerificationCode<T>>
      get copyWith => __$InvalidVerificationCodeCopyWithImpl<T,
          _InvalidVerificationCode<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String filedValue),
    @required Result invalidPassword(String filedValue),
    @required Result invalidVerificationCode(List<String> filedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidVerificationCode != null);
    return invalidVerificationCode(filedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String filedValue),
    Result invalidPassword(String filedValue),
    Result invalidVerificationCode(List<String> filedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidVerificationCode != null) {
      return invalidVerificationCode(filedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result invalidPassword(_InvalidPassowrd<T> value),
    @required Result invalidVerificationCode(_InvalidVerificationCode<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidVerificationCode != null);
    return invalidVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result invalidPassword(_InvalidPassowrd<T> value),
    Result invalidVerificationCode(_InvalidVerificationCode<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidVerificationCode != null) {
      return invalidVerificationCode(this);
    }
    return orElse();
  }
}

abstract class _InvalidVerificationCode<T> implements ValueFailure<T> {
  const factory _InvalidVerificationCode({@required List<String> filedValue}) =
      _$_InvalidVerificationCode<T>;

  List<String> get filedValue;
  _$InvalidVerificationCodeCopyWith<T, _InvalidVerificationCode<T>>
      get copyWith;
}
