// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Vyra';

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get welcomeMessage => 'Welcome to Vyra';

  @override
  String get map => 'Map';

  @override
  String get settings => 'Settings';

  @override
  String get profile => 'Profile';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get profileDetail => 'Profile Detail';

  @override
  String get create => 'Create';

  @override
  String get search => 'Search';

  @override
  String get next => 'Next';

  @override
  String get skip => 'Skip';

  @override
  String get getStarted => 'Get Started';

  @override
  String get open => 'Open';

  @override
  String get close => 'Close';

  @override
  String get apply => 'Apply';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get done => 'Done';

  @override
  String get preferences => 'Preferences';

  @override
  String get feedback => 'Feedback';

  @override
  String get support => 'Support';

  @override
  String get language => 'Language';

  @override
  String get theme => 'Theme';

  @override
  String get featureSuggestion => 'Suggest a Feature';

  @override
  String get reportBug => 'Report a Bug';

  @override
  String get helpCenter => 'Help Center';

  @override
  String get termsAndServices => 'Terms and Services';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get signOut => 'Sign Out';

  @override
  String get recommendApp => 'Recommend App';

  @override
  String get rateUsOnAppStore => 'Rate Us on App Store';

  @override
  String get whatsNew => 'What\'s New';

  @override
  String get termsAndConditions => 'Terms and Conditions';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get system => 'System';

  @override
  String get signoutAlertDesc =>
      'Are you sure you want to sign out from the app ?';

  @override
  String get chooseLanguage => 'Choose Your Language';

  @override
  String get chooseLanguageDescription =>
      'Select your preferred language to enhance your experience with Vyra.';

  @override
  String get enableLocation => 'Enable Location';

  @override
  String get enableLocationDescription =>
      'Allow Vyra to access your location to provide personalized experiences.';

  @override
  String get locationPermissionRequired => 'Location Permission Required';

  @override
  String get locationPermissionDeniedMessage =>
      'In order to use the map, please grant location permission. This allows us to provide you with accurate route information and environmental data for your area.';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get enableNotifications => 'Enable Notifications';

  @override
  String get enableNotificationsDescription =>
      'Stay updated with the latest news and updates from Vyra.';

  @override
  String get onboardingOneTitle => 'Find the Healthiest Path Around You';

  @override
  String get onboardingOneHashtag => '#HealthyRoutes #CleanAir #NASA';

  @override
  String get onboardingOneDescription =>
      'VYRA helps you navigate through streets with cleaner air, safer temperatures, and less environmental stress using NASA\'s open satellite data.';

  @override
  String get onboardingTwoTitle => 'See Your City\'s Health in Real Time';

  @override
  String get onboardingTwoHashtag => '#LiveData #Weather #AirQuality';

  @override
  String get onboardingTwoDescription =>
      'Get live environmental insights powered by NASA data temperature, air quality, and rain patterns all visualized directly on your map.';

  @override
  String get onboardingThreeTitle => 'Plan a Greener Future';

  @override
  String get onboardingThreeHashtag =>
      '#GreenCities #UrbanPlanning #Sustainability';

  @override
  String get onboardingThreeDescription =>
      'Simulate how adding trees or green spaces could reduce city heat and improve wellbeing one block at a time.';

  @override
  String get faqTitle => 'Frequently Asked Questions';

  @override
  String get faqDescription =>
      'Find answers to common questions about Vyra and how to use our features effectively.';

  @override
  String get faqOne => 'What is VYRA?';

  @override
  String get faqOneAnswer =>
      'VYRA is a mobile app that helps people navigate the healthiest routes in their cities by combining NASA\'s Earth observation data with local street networks. It visualizes environmental stress (temperature, air quality, rain) and suggests routes or actions that reduce exposure.';

  @override
  String get faqTwo => 'What problem does VYRA solve?';

  @override
  String get faqTwoAnswer =>
      'Urban residents are often unaware of micro-climate variations — heat pockets, polluted zones, or poor air flow. VYRA makes these invisible health risks visible and actionable, empowering people to make better mobility and planning decisions.';

  @override
  String get faqThree => 'What data does VYRA use?';

  @override
  String get faqThreeAnswer =>
      'It integrates NASA and open datasets, such as: ERA5 (temperature, wind) for thermal stress, Sentinel-5P or MAIAC for air quality, GPM IMERG for rain and humidity, and SEDAC GPWv4 for population density. All combined into a simple Health Stress Index (HSI).';

  @override
  String get faqFour => 'How does VYRA calculate \'healthiest\' routes?';

  @override
  String get faqFourAnswer =>
      'For every street segment, VYRA samples nearby data layers (heat, air, rain), computes a weighted exposure score, and compares two options: Fastest route — shortest distance or time, and Healthiest route — slightly longer but lower environmental stress. Users can see the difference in both exposure % and travel time.';

  @override
  String get faqFive => 'Does VYRA work in real time?';

  @override
  String get faqFiveAnswer =>
      'Yes — it refreshes environmental layers hourly using NASA\'s near-real-time products (e.g., GPM IMERG and ERA5-Land). If live data is unavailable, it falls back to cached or demo datasets, so it\'s always usable even offline.';

  @override
  String get faqSix => 'What is the Health Stress Index (HSI)?';

  @override
  String get faqSixAnswer =>
      'HSI is a composite value (0–10) that represents combined thermal, air, and rain stress at a given point or neighborhood. For example: HSI 2–4 = comfortable, HSI 5–7 = moderate stress, HSI 8+ = high health risk area.';

  @override
  String get faqSeven => 'How can city planners use VYRA?';

  @override
  String get faqSevenAnswer =>
      'Through the Planner Simulation feature — users can \'add trees\' or \'increase green cover\' on the map to instantly see how that would reduce the average HSI and benefit local populations. This turns abstract climate metrics into visual, actionable urban planning tools.';

  @override
  String get faqEight => 'Why NASA data?';

  @override
  String get faqEightAnswer =>
      'NASA\'s Earth observation datasets offer global, validated, and openly accessible measurements of environmental parameters. They ensure scientific reliability and scalability to any city in the world without needing expensive local sensors.';

  @override
  String get faqNine => 'How is VYRA different from other navigation apps?';

  @override
  String get faqNineAnswer =>
      'Unlike Google Maps or Waze, VYRA is not about traffic or speed — it\'s about human health and environmental comfort. It\'s the first routing tool that blends space data, sustainability, and personal well-being into everyday movement.';

  @override
  String get faqTen => 'What\'s next for VYRA after the hackathon?';

  @override
  String get faqTenAnswer =>
      'Expand beyond Istanbul to multiple cities, integrate AI explainers (\'why this route is healthier\'), add user personas (e.g., asthma, elderly, cyclist), and connect with city dashboards to support climate-resilient urban planning.';

  @override
  String get hi => 'Hi';

  @override
  String get signIn => 'Sign In';

  @override
  String get signUp => 'Sign Up';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get username => 'Username';

  @override
  String get fullName => 'Full Name';

  @override
  String get birthDate => 'Birth Date';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get welcomeBack => 'Welcome back!';

  @override
  String get createAccount => 'Create your account';

  @override
  String get signInDescription => 'Sign in to continue your healthy journey';

  @override
  String get signUpDescription =>
      'Join Vyra and start exploring healthier routes';

  @override
  String get emailRequired => 'Email is required';

  @override
  String get passwordRequired => 'Password is required';

  @override
  String get usernameRequired => 'Username is required';

  @override
  String get fullNameRequired => 'Full name is required';

  @override
  String get birthDateRequired => 'Birth date is required';

  @override
  String get invalidEmail => 'Please enter a valid email address';

  @override
  String get invalidUsername =>
      'Username must be 3-50 characters, alphanumeric or underscore only';

  @override
  String get invalidFullName => 'Full name must be at least 1 character';

  @override
  String get invalidPassword =>
      'Password must be 8-100 characters with at least one letter and one number';

  @override
  String get invalidPasswordConfirmation => 'Passwords do not match';

  @override
  String get passwordTooShort => 'Password must be at least 8 characters';

  @override
  String get passwordsDoNotMatch => 'Passwords do not match';

  @override
  String get passwordMustContainLetterAndNumber =>
      'Password must contain at least one letter and one number';

  @override
  String get selectBirthDate => 'Select your birth date';

  @override
  String get passwordLengthError =>
      'Password must be 8-100 characters with at least one letter and one number';

  @override
  String get usernameLengthError =>
      'Username must be 3-50 characters, alphanumeric or underscore only';

  @override
  String get fullNameLengthError => 'Full name is required and must be valid';

  @override
  String get mode => 'Mode';

  @override
  String get walking => 'Walking';

  @override
  String get cycling => 'Cycling';

  @override
  String get season => 'Season';

  @override
  String get spring => 'Spring';

  @override
  String get summer => 'Summer';

  @override
  String get fall => 'Fall';

  @override
  String get winter => 'Winter';

  @override
  String get navigate => 'Navigate';

  @override
  String get healthiestRoute => 'Healthiest Route';

  @override
  String get fastestRoute => 'Fastest Route';

  @override
  String get distance => 'Distance';

  @override
  String get duration => 'Duration';

  @override
  String get healthStressIndex => 'Health Stress Index';

  @override
  String get selectMode => 'Select your travel mode';

  @override
  String get selectSeason => 'Select the season';

  @override
  String get findRoute => 'Find Route';

  @override
  String get routeDetails => 'Route Details';

  @override
  String get routeFetchError => 'Failed to fetch route. Please try again.';

  @override
  String get pleaseSignInFirst => 'Please sign in first';

  @override
  String get update => 'Update';

  @override
  String get createModalSheet => 'Create Modal Sheet';

  @override
  String get lastSignIn => 'Last Sign In';

  @override
  String get exposure => 'Exposure';

  @override
  String get anErrorOccurred => 'An error occurred';

  @override
  String get checkOutVyra => 'Check out Vyra';

  @override
  String get couldNotLaunch => 'Could not launch';

  @override
  String get navigatingHealthiestRoute => 'Navigating Healthiest Route';

  @override
  String get navigatingFastestRoute => 'Navigating Fastest Route';

  @override
  String get stopNavigation => 'Stop Navigation';

  @override
  String get showHeatmap => 'Show Heatmap';

  @override
  String get heatmapDescription => 'HSI Data';

  @override
  String get heatmapTooltip =>
      'Toggle to show health stress index data on the map';

  @override
  String get locationPermissionTitle => 'We Need Access to Your Location';

  @override
  String get locationPermissionDescription =>
      'To provide you with the best route recommendations and environmental data, we need access to your location. This helps us find the healthiest paths around you.';
}
