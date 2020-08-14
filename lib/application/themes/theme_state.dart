part of 'theme_bloc.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState(
      {@required ThemeType type, @required ThemeData data}) = _ThemeState;

  factory ThemeState.initial() =>
      ThemeState(type: ThemeType.system, data: CustomAppTheme.light);
}
