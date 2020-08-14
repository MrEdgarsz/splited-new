import 'package:freezed_annotation/freezed_annotation.dart';

part 'accountTypes.freezed.dart';

@freezed
abstract class AccountType with _$AccountType {
  const factory AccountType.standard() = Standard;
  const factory AccountType.google() = Google;
  const factory AccountType.facebook() = Facebook;
}
