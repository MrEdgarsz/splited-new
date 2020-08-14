// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

// ignore: unused_element
  ChangeTheme changeTheme(ThemeType themeType) {
    return ChangeTheme(
      themeType,
    );
  }
}

// ignore: unused_element
const $ThemeEvent = _$ThemeEventTearOff();

mixin _$ThemeEvent {
  ThemeType get themeType;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeTheme(ThemeType themeType),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeTheme(ThemeType themeType),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeTheme(ChangeTheme value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeTheme(ChangeTheme value),
    @required Result orElse(),
  });

  $ThemeEventCopyWith<ThemeEvent> get copyWith;
}

abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
  $Res call({ThemeType themeType});
}

class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;

  @override
  $Res call({
    Object themeType = freezed,
  }) {
    return _then(_value.copyWith(
      themeType:
          themeType == freezed ? _value.themeType : themeType as ThemeType,
    ));
  }
}

abstract class $ChangeThemeCopyWith<$Res> implements $ThemeEventCopyWith<$Res> {
  factory $ChangeThemeCopyWith(
          ChangeTheme value, $Res Function(ChangeTheme) then) =
      _$ChangeThemeCopyWithImpl<$Res>;
  @override
  $Res call({ThemeType themeType});
}

class _$ChangeThemeCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements $ChangeThemeCopyWith<$Res> {
  _$ChangeThemeCopyWithImpl(
      ChangeTheme _value, $Res Function(ChangeTheme) _then)
      : super(_value, (v) => _then(v as ChangeTheme));

  @override
  ChangeTheme get _value => super._value as ChangeTheme;

  @override
  $Res call({
    Object themeType = freezed,
  }) {
    return _then(ChangeTheme(
      themeType == freezed ? _value.themeType : themeType as ThemeType,
    ));
  }
}

class _$ChangeTheme with DiagnosticableTreeMixin implements ChangeTheme {
  const _$ChangeTheme(this.themeType) : assert(themeType != null);

  @override
  final ThemeType themeType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemeEvent.changeTheme(themeType: $themeType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThemeEvent.changeTheme'))
      ..add(DiagnosticsProperty('themeType', themeType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeTheme &&
            (identical(other.themeType, themeType) ||
                const DeepCollectionEquality()
                    .equals(other.themeType, themeType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(themeType);

  @override
  $ChangeThemeCopyWith<ChangeTheme> get copyWith =>
      _$ChangeThemeCopyWithImpl<ChangeTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeTheme(ThemeType themeType),
  }) {
    assert(changeTheme != null);
    return changeTheme(themeType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeTheme(ThemeType themeType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeTheme != null) {
      return changeTheme(themeType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeTheme(ChangeTheme value),
  }) {
    assert(changeTheme != null);
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeTheme(ChangeTheme value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class ChangeTheme implements ThemeEvent {
  const factory ChangeTheme(ThemeType themeType) = _$ChangeTheme;

  @override
  ThemeType get themeType;
  @override
  $ChangeThemeCopyWith<ChangeTheme> get copyWith;
}

class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

// ignore: unused_element
  _ThemeState call({@required ThemeType type, @required ThemeData data}) {
    return _ThemeState(
      type: type,
      data: data,
    );
  }
}

// ignore: unused_element
const $ThemeState = _$ThemeStateTearOff();

mixin _$ThemeState {
  ThemeType get type;
  ThemeData get data;

  $ThemeStateCopyWith<ThemeState> get copyWith;
}

abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeType type, ThemeData data});
}

class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object type = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as ThemeType,
      data: data == freezed ? _value.data : data as ThemeData,
    ));
  }
}

abstract class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(
          _ThemeState value, $Res Function(_ThemeState) then) =
      __$ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeType type, ThemeData data});
}

class __$ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(
      _ThemeState _value, $Res Function(_ThemeState) _then)
      : super(_value, (v) => _then(v as _ThemeState));

  @override
  _ThemeState get _value => super._value as _ThemeState;

  @override
  $Res call({
    Object type = freezed,
    Object data = freezed,
  }) {
    return _then(_ThemeState(
      type: type == freezed ? _value.type : type as ThemeType,
      data: data == freezed ? _value.data : data as ThemeData,
    ));
  }
}

class _$_ThemeState with DiagnosticableTreeMixin implements _ThemeState {
  const _$_ThemeState({@required this.type, @required this.data})
      : assert(type != null),
        assert(data != null);

  @override
  final ThemeType type;
  @override
  final ThemeData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemeState(type: $type, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThemeState'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeState &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(data);

  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState(
      {@required ThemeType type, @required ThemeData data}) = _$_ThemeState;

  @override
  ThemeType get type;
  @override
  ThemeData get data;
  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith;
}
