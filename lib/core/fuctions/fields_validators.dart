import 'package:ecommerce_store/core/constant/verification_criteria.dart';

class FieldsValidators {
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Required Field';
    }

    if (RegExp(VerificationCriteria.emailValidator).hasMatch(value)) {
      return null;
    }
    if (value.length == 10) {
      return null;
    }

    if (!RegExp(VerificationCriteria.phoneValidator).hasMatch(value)) {
      return 'Please enter a valid email or mobile number';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Required Field';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    if (!RegExp(VerificationCriteria.passwordValidator).hasMatch(value)) {
      return 'Please choose a painless password\nTry a mix of names and symbols';
    }
    return null;
  }

  static String? userNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'user name is required';
    }

    if (value.length < 3) {
      return 'user name must be at least 3 characters long';
    }

    if (!RegExp(VerificationCriteria.userNameValidator).hasMatch(value)) {
      return 'Please enter a valid password';
    }
    return null;
  }

  static String? emptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Required Field';
    }

    return null;
  }
}
