class InputValidator {
  static String? phoneValidator(String? value) {
    if (value!.isEmpty) {
      return 'phone must be Not Empty';
    } else if (value.length < 10) {
      return 'phone must be 10 digits';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value!.isEmpty) {
      return 'password must be Not Empty';
    } else if (value.length < 7) {
      return 'password must be at least 7 digits';
    }
    return null;
  }

  static String? confirmpasswordValidator(String? value) {
    if (value!.isEmpty) {
      return 'confirmpassword must be Not Empty';
    } else if (value.length < 7) {
      return 'confirmpassword must be at least 7 digits';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return 'email must be Not Empty';
    } else if (value.length < 7) {
      return 'email must be  at least 7 digits';
    }
    return null;
  }

  static String? fullNameValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'fullName is required';
    } else if (value.trim().length < 7) {
      return 'fullName must be  at least 7  characters';
    }
    return null;
  }
}
