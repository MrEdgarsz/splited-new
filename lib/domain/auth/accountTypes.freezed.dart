// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'accountTypes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountTypeTearOff {
  const _$AccountTypeTearOff();

// ignore: unused_element
  Standard standard() {
    return const Standard();
  }

// ignore: unused_element
  Google google() {
    return const Google();
  }

// ignore: unused_element
  Facebook facebook() {
    return const Facebook();
  }
}

// ignore: unused_element
const $AccountType = _$AccountTypeTearOff();

mixin _$AccountType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result standard(),
    @required Result google(),
    @required Result facebook(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result standard(),
    Result google(),
    Result facebook(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result standard(Standard value),
    @required Result google(Google value),
    @required Result facebook(Facebook value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result standard(Standard value),
    Result google(Google value),
    Result facebook(Facebook value),
    @required Result orElse(),
  });
}

abstract class $AccountTypeCopyWith<$Res> {
  factory $AccountTypeCopyWith(
          AccountType value, $Res Function(AccountType) then) =
      _$AccountTypeCopyWithImpl<$Res>;
}

class _$AccountTypeCopyWithImpl<$Res> implements $AccountTypeCopyWith<$Res> {
  _$AccountTypeCopyWithImpl(this._value, this._then);

  final AccountType _value;
  // ignore: unused_field
  final $Res Function(AccountType) _then;
}

abstract class $StandardCopyWith<$Res> {
  factory $StandardCopyWith(Standard value, $Res Function(Standard) then) =
      _$StandardCopyWithImpl<$Res>;
}

class _$StandardCopyWithImpl<$Res> extends _$AccountTypeCopyWithImpl<$Res>
    implements $StandardCopyWith<$Res> {
  _$StandardCopyWithImpl(Standard _value, $Res Function(Standard) _then)
      : super(_value, (v) => _then(v as Standard));

  @override
  Standard get _value => super._value as Standard;
}

class _$Standard implements Standard {
  const _$Standard();

  @override
  String toString() {
    return 'AccountType.standard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Standard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result standard(),
    @required Result google(),
    @required Result facebook(),
  }) {
    assert(standard != null);
    assert(google != null);
    assert(facebook != null);
    return standard();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result standard(),
    Result google(),
    Result facebook(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (standard != null) {
      return standard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result standard(Standard value),
    @required Result google(Google value),
    @required Result facebook(Facebook value),
  }) {
    assert(standard != null);
    assert(google != null);
    assert(facebook != null);
    return standard(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result standard(Standard value),
    Result google(Google value),
    Result facebook(Facebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (standard != null) {
      return standard(this);
    }
    return orElse();
  }
}

abstract class Standard implements AccountType {
  const factory Standard() = _$Standard;
}

abstract class $GoogleCopyWith<$Res> {
  factory $GoogleCopyWith(Google value, $Res Function(Google) then) =
      _$GoogleCopyWithImpl<$Res>;
}

class _$GoogleCopyWithImpl<$Res> extends _$AccountTypeCopyWithImpl<$Res>
    implements $GoogleCopyWith<$Res> {
  _$GoogleCopyWithImpl(Google _value, $Res Function(Google) _then)
      : super(_value, (v) => _then(v as Google));

  @override
  Google get _value => super._value as Google;
}

class _$Google implements Google {
  const _$Google();

  @override
  String toString() {
    return 'AccountType.google()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Google);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result standard(),
    @required Result google(),
    @required Result facebook(),
  }) {
    assert(standard != null);
    assert(google != null);
    assert(facebook != null);
    return google();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result standard(),
    Result google(),
    Result facebook(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (google != null) {
      return google();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result standard(Standard value),
    @required Result google(Google value),
    @required Result facebook(Facebook value),
  }) {
    assert(standard != null);
    assert(google != null);
    assert(facebook != null);
    return google(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result standard(Standard value),
    Result google(Google value),
    Result facebook(Facebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (google != null) {
      return google(this);
    }
    return orElse();
  }
}

abstract class Google implements AccountType {
  const factory Google() = _$Google;
}

abstract class $FacebookCopyWith<$Res> {
  factory $FacebookCopyWith(Facebook value, $Res Function(Facebook) then) =
      _$FacebookCopyWithImpl<$Res>;
}

class _$FacebookCopyWithImpl<$Res> extends _$AccountTypeCopyWithImpl<$Res>
    implements $FacebookCopyWith<$Res> {
  _$FacebookCopyWithImpl(Facebook _value, $Res Function(Facebook) _then)
      : super(_value, (v) => _then(v as Facebook));

  @override
  Facebook get _value => super._value as Facebook;
}

class _$Facebook implements Facebook {
  const _$Facebook();

  @override
  String toString() {
    return 'AccountType.facebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Facebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result standard(),
    @required Result google(),
    @required Result facebook(),
  }) {
    assert(standard != null);
    assert(google != null);
    assert(facebook != null);
    return facebook();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result standard(),
    Result google(),
    Result facebook(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (facebook != null) {
      return facebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result standard(Standard value),
    @required Result google(Google value),
    @required Result facebook(Facebook value),
  }) {
    assert(standard != null);
    assert(google != null);
    assert(facebook != null);
    return facebook(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result standard(Standard value),
    Result google(Google value),
    Result facebook(Facebook value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (facebook != null) {
      return facebook(this);
    }
    return orElse();
  }
}

abstract class Facebook implements AccountType {
  const factory Facebook() = _$Facebook;
}
