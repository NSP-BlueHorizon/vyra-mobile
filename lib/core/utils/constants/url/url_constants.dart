class UrlConstants {
  UrlConstants._();

  // Base API URL
  static const String baseUrl =
      'https://f2b047af-2a77-47a2-b976-962af074f093.mock.pstmn.io';

  // Auth endpoints
  static const String signupUrl = '$baseUrl/auth/signup';
  static const String signinUrl = '$baseUrl/auth/login';
  static const String refreshTokenUrl = '$baseUrl/auth/refresh';
  static const String getUserDataUrl = '$baseUrl/auth/me';

  // App Store URLs
  static const String appStoreURL =
      'https://apps.apple.com/app/vyra/id123456789';

  // Legal URLs
  static const String privacyPolicyURL = 'https://vyra.app/privacy-policy';
  static const String termsOfServiceURL = 'https://vyra.app/terms-of-service';
}
