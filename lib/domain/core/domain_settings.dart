class DomainSettings {
  static String emailRegExp =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  static String passwordRegExp = "(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}";
}
