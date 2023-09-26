class VerificationCriteria {
  static const emailValidator =
      r'''^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$''';
  static const passwordValidator =
      r'''^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$!%^&*()_+{}|:;<=>?~\[\]\\\-])[^'";:]*$''';
  static const userNameValidator = r'''^[a-zA-Z0-9_-]{3,16}$''';
  static const phoneValidator = r'''^\(\d{3}\) \d{3}-\d{4}$''';
  
  
}
