class UrlConstants {
  UrlConstants._();

  // Base API URL
  static const String baseUrl = 'http://172.20.10.3:9000';

  // Auth endpoints
  static const String signupUrl = '$baseUrl/auth/signup';
  static const String signinUrl = '$baseUrl/auth/login';
  static const String refreshTokenUrl = '$baseUrl/auth/refresh';
  static const String getUserDataUrl = '$baseUrl/auth/me';

  // Map endpoints
  static const String routeUrl = '$baseUrl/route';

  static const String metaUrl = '$baseUrl/meta';
  static const String routeComparisonUrl = '$baseUrl/route';
  static const String predictUrl = '$baseUrl/predict';
  static const String simulateUrl = '$baseUrl/simulate';
  static const String heatmapUrl = '$baseUrl/heatmap';

  // App Store URLs
  static const String appStoreURL =
      'https://apps.apple.com/app/vyra/id123456789';

  // Legal URLs
  static const String privacyPolicyURL = 'https://vyra.app/privacy-policy';
  static const String termsOfServiceURL = 'https://vyra.app/terms-of-service';
}
