class ValidationFunctions {
  ValidationFunctions._();

  /// Validates username: 3-50 characters, alphanumeric or underscore only
  static bool isValidUsername(String? username) {
    if (username == null || username.isEmpty) return false;

    // Check length (3-50 characters)
    if (username.length < 3 || username.length > 50) return false;

    // Check if only alphanumeric characters and underscores
    final usernameRegex = RegExp(r'^[a-zA-Z0-9_]+$');
    return usernameRegex.hasMatch(username);
  }

  /// Validates full name: 1-255 characters
  static bool isValidFullName(String? fullName) {
    if (fullName == null || fullName.isEmpty) return false;

    // Check length (1-255 characters)
    if (fullName.isEmpty || fullName.length > 255) return false;

    // Trim whitespace and check if not empty after trimming
    return fullName.trim().isNotEmpty;
  }

  /// Validates birth date: YYYY-MM-DD format
  static bool isValidBirthDate(String? birthDate) {
    if (birthDate == null || birthDate.isEmpty) return false;

    // Check YYYY-MM-DD format
    final dateRegex = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    if (!dateRegex.hasMatch(birthDate)) return false;

    // Try to parse the date
    try {
      final parts = birthDate.split('-');
      final year = int.parse(parts[0]);
      final month = int.parse(parts[1]);
      final day = int.parse(parts[2]);

      // Check if it's a valid date
      final date = DateTime(year, month, day);

      // Check if the parsed date matches the input (handles invalid dates like 2023-02-30)
      return date.year == year && date.month == month && date.day == day;
    } catch (e) {
      return false;
    }
  }

  /// Validates email: Valid email address format
  static bool isValidEmail(String? email) {
    if (email == null || email.isEmpty) return false;

    // Email regex pattern - more comprehensive
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$',
    );
    return emailRegex.hasMatch(email.trim());
  }

  /// Validates password: 8-100 characters with strength requirements
  static bool isValidPassword(String? password) {
    if (password == null || password.isEmpty) return false;

    // Check length (8-100 characters)
    if (password.length < 8 || password.length > 100) return false;

    // Check for at least one letter and one number
    final hasLetter = RegExp(r'[a-zA-Z]').hasMatch(password);
    final hasNumber = RegExp(r'[0-9]').hasMatch(password);

    return hasLetter && hasNumber;
  }

  /// Validates email for signin: Basic email format check
  static bool isValidSigninEmail(String? email) {
    if (email == null || email.isEmpty) return false;

    // Basic email validation for signin
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email.trim());
  }

  /// Validates password for signin: 8-100 characters
  static bool isValidSigninPassword(String? password) {
    if (password == null || password.isEmpty) return false;

    // Check length (8-100 characters)
    return password.length >= 8 && password.length <= 100;
  }

  /// Validates password confirmation: matches the original password
  static bool isValidPasswordConfirmation(
    String? password,
    String? confirmPassword,
  ) {
    if (password == null || confirmPassword == null) return false;

    return password == confirmPassword;
  }

  /// Validates if a string is not empty
  static bool isNotEmpty(String? value) {
    return value != null && value.trim().isNotEmpty;
  }

  /// Validates if a string has minimum length
  static bool hasMinLength(String? value, int minLength) {
    if (value == null) return false;
    return value.length >= minLength;
  }

  /// Validates if a string has maximum length
  static bool hasMaxLength(String? value, int maxLength) {
    if (value == null) return false;
    return value.length <= maxLength;
  }
}
