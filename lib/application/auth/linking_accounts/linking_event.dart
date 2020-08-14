part of 'linking_bloc.dart';

@freezed
abstract class LinkingEvent with _$LinkingEvent {
  const factory LinkingEvent.emailChanged(
    String email,
  ) = EmailChanged;
  const factory LinkingEvent.passwordChanged(
    String password,
  ) = PasswordChanged;
  const factory LinkingEvent.passwordRepeatChanged(
    String passwordRepeat,
  ) = PasswordRepeatChanged;
  const factory LinkingEvent.termsAcceptanceChanged(
    bool termsAccepted,
  ) = TermsAcceptanceChanged;
  const factory LinkingEvent.linkAccounts(AccountType type) = LinkAccounts;
}
