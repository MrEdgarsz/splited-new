import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:splited/presentation/themes/custom_app_theme.dart';
import 'package:splited/presentation/themes/theme_type.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@lazySingleton
class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial());

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    if (json["themeType"] == ThemeType.dark.toString()) {
      return ThemeState(data: CustomAppTheme.dark, type: ThemeType.dark);
    } else if (json["themeType"] == ThemeType.light.toString()) {
      return ThemeState(data: CustomAppTheme.light, type: ThemeType.light);
    } else if (json["themeType"] == ThemeType.system.toString()) {
      return ThemeState(data: CustomAppTheme.light, type: ThemeType.system);
    } else {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    return {
      "themeType": state.type.toString(),
    };
  }

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    ThemeData _theme;
    switch (event.themeType) {
      case ThemeType.system:
        _theme = CustomAppTheme.light;
        break;
      case ThemeType.dark:
        _theme = CustomAppTheme.dark;
        break;
      case ThemeType.light:
        _theme = CustomAppTheme.light;
        break;
    }
    yield state.copyWith(
      data: _theme,
      type: event.themeType,
    );
  }
}
