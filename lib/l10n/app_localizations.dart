import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('pt'),
    Locale('ru'),
    Locale('tr'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Vyra'**
  String get appTitle;

  /// No description provided for @helloWorld.
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @welcomeMessage.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Vyra'**
  String get welcomeMessage;

  /// No description provided for @map.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get map;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @profileDetail.
  ///
  /// In en, this message translates to:
  /// **'Profile Detail'**
  String get profileDetail;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedback;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @featureSuggestion.
  ///
  /// In en, this message translates to:
  /// **'Suggest a Feature'**
  String get featureSuggestion;

  /// No description provided for @reportBug.
  ///
  /// In en, this message translates to:
  /// **'Report a Bug'**
  String get reportBug;

  /// No description provided for @helpCenter.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenter;

  /// No description provided for @termsAndServices.
  ///
  /// In en, this message translates to:
  /// **'Terms and Services'**
  String get termsAndServices;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @recommendApp.
  ///
  /// In en, this message translates to:
  /// **'Recommend App'**
  String get recommendApp;

  /// No description provided for @rateUsOnAppStore.
  ///
  /// In en, this message translates to:
  /// **'Rate Us on App Store'**
  String get rateUsOnAppStore;

  /// No description provided for @whatsNew.
  ///
  /// In en, this message translates to:
  /// **'What\'s New'**
  String get whatsNew;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @signoutAlertDesc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out from the app ?'**
  String get signoutAlertDesc;

  /// No description provided for @chooseLanguage.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Language'**
  String get chooseLanguage;

  /// No description provided for @chooseLanguageDescription.
  ///
  /// In en, this message translates to:
  /// **'Select your preferred language to enhance your experience with Vyra.'**
  String get chooseLanguageDescription;

  /// No description provided for @enableLocation.
  ///
  /// In en, this message translates to:
  /// **'Enable Location'**
  String get enableLocation;

  /// No description provided for @enableLocationDescription.
  ///
  /// In en, this message translates to:
  /// **'Allow Vyra to access your location to provide personalized experiences.'**
  String get enableLocationDescription;

  /// No description provided for @locationPermissionRequired.
  ///
  /// In en, this message translates to:
  /// **'Location Permission Required'**
  String get locationPermissionRequired;

  /// No description provided for @locationPermissionDeniedMessage.
  ///
  /// In en, this message translates to:
  /// **'In order to use the map, please grant location permission. This allows us to provide you with accurate route information and environmental data for your area.'**
  String get locationPermissionDeniedMessage;

  /// No description provided for @openSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @enableNotifications.
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get enableNotifications;

  /// No description provided for @enableNotificationsDescription.
  ///
  /// In en, this message translates to:
  /// **'Stay updated with the latest news and updates from Vyra.'**
  String get enableNotificationsDescription;

  /// No description provided for @onboardingOneTitle.
  ///
  /// In en, this message translates to:
  /// **'Find the Healthiest Path Around You'**
  String get onboardingOneTitle;

  /// No description provided for @onboardingOneHashtag.
  ///
  /// In en, this message translates to:
  /// **'#HealthyRoutes #CleanAir #NASA'**
  String get onboardingOneHashtag;

  /// No description provided for @onboardingOneDescription.
  ///
  /// In en, this message translates to:
  /// **'VYRA helps you navigate through streets with cleaner air, safer temperatures, and less environmental stress using NASA\'s open satellite data.'**
  String get onboardingOneDescription;

  /// No description provided for @onboardingTwoTitle.
  ///
  /// In en, this message translates to:
  /// **'See Your City\'s Health in Real Time'**
  String get onboardingTwoTitle;

  /// No description provided for @onboardingTwoHashtag.
  ///
  /// In en, this message translates to:
  /// **'#LiveData #Weather #AirQuality'**
  String get onboardingTwoHashtag;

  /// No description provided for @onboardingTwoDescription.
  ///
  /// In en, this message translates to:
  /// **'Get live environmental insights powered by NASA data temperature, air quality, and rain patterns all visualized directly on your map.'**
  String get onboardingTwoDescription;

  /// No description provided for @onboardingThreeTitle.
  ///
  /// In en, this message translates to:
  /// **'Plan a Greener Future'**
  String get onboardingThreeTitle;

  /// No description provided for @onboardingThreeHashtag.
  ///
  /// In en, this message translates to:
  /// **'#GreenCities #UrbanPlanning #Sustainability'**
  String get onboardingThreeHashtag;

  /// No description provided for @onboardingThreeDescription.
  ///
  /// In en, this message translates to:
  /// **'Simulate how adding trees or green spaces could reduce city heat and improve wellbeing one block at a time.'**
  String get onboardingThreeDescription;

  /// No description provided for @faqTitle.
  ///
  /// In en, this message translates to:
  /// **'Frequently Asked Questions'**
  String get faqTitle;

  /// No description provided for @faqDescription.
  ///
  /// In en, this message translates to:
  /// **'Find answers to common questions about Vyra and how to use our features effectively.'**
  String get faqDescription;

  /// No description provided for @faqOne.
  ///
  /// In en, this message translates to:
  /// **'What is VYRA?'**
  String get faqOne;

  /// No description provided for @faqOneAnswer.
  ///
  /// In en, this message translates to:
  /// **'VYRA is a mobile app that helps people navigate the healthiest routes in their cities by combining NASA\'s Earth observation data with local street networks. It visualizes environmental stress (temperature, air quality, rain) and suggests routes or actions that reduce exposure.'**
  String get faqOneAnswer;

  /// No description provided for @faqTwo.
  ///
  /// In en, this message translates to:
  /// **'What problem does VYRA solve?'**
  String get faqTwo;

  /// No description provided for @faqTwoAnswer.
  ///
  /// In en, this message translates to:
  /// **'Urban residents are often unaware of micro-climate variations — heat pockets, polluted zones, or poor air flow. VYRA makes these invisible health risks visible and actionable, empowering people to make better mobility and planning decisions.'**
  String get faqTwoAnswer;

  /// No description provided for @faqThree.
  ///
  /// In en, this message translates to:
  /// **'What data does VYRA use?'**
  String get faqThree;

  /// No description provided for @faqThreeAnswer.
  ///
  /// In en, this message translates to:
  /// **'It integrates NASA and open datasets, such as: ERA5 (temperature, wind) for thermal stress, Sentinel-5P or MAIAC for air quality, GPM IMERG for rain and humidity, and SEDAC GPWv4 for population density. All combined into a simple Health Stress Index (HSI).'**
  String get faqThreeAnswer;

  /// No description provided for @faqFour.
  ///
  /// In en, this message translates to:
  /// **'How does VYRA calculate \'healthiest\' routes?'**
  String get faqFour;

  /// No description provided for @faqFourAnswer.
  ///
  /// In en, this message translates to:
  /// **'For every street segment, VYRA samples nearby data layers (heat, air, rain), computes a weighted exposure score, and compares two options: Fastest route — shortest distance or time, and Healthiest route — slightly longer but lower environmental stress. Users can see the difference in both exposure % and travel time.'**
  String get faqFourAnswer;

  /// No description provided for @faqFive.
  ///
  /// In en, this message translates to:
  /// **'Does VYRA work in real time?'**
  String get faqFive;

  /// No description provided for @faqFiveAnswer.
  ///
  /// In en, this message translates to:
  /// **'Yes — it refreshes environmental layers hourly using NASA\'s near-real-time products (e.g., GPM IMERG and ERA5-Land). If live data is unavailable, it falls back to cached or demo datasets, so it\'s always usable even offline.'**
  String get faqFiveAnswer;

  /// No description provided for @faqSix.
  ///
  /// In en, this message translates to:
  /// **'What is the Health Stress Index (HSI)?'**
  String get faqSix;

  /// No description provided for @faqSixAnswer.
  ///
  /// In en, this message translates to:
  /// **'HSI is a composite value (0–10) that represents combined thermal, air, and rain stress at a given point or neighborhood. For example: HSI 2–4 = comfortable, HSI 5–7 = moderate stress, HSI 8+ = high health risk area.'**
  String get faqSixAnswer;

  /// No description provided for @faqSeven.
  ///
  /// In en, this message translates to:
  /// **'How can city planners use VYRA?'**
  String get faqSeven;

  /// No description provided for @faqSevenAnswer.
  ///
  /// In en, this message translates to:
  /// **'Through the Planner Simulation feature — users can \'add trees\' or \'increase green cover\' on the map to instantly see how that would reduce the average HSI and benefit local populations. This turns abstract climate metrics into visual, actionable urban planning tools.'**
  String get faqSevenAnswer;

  /// No description provided for @faqEight.
  ///
  /// In en, this message translates to:
  /// **'Why NASA data?'**
  String get faqEight;

  /// No description provided for @faqEightAnswer.
  ///
  /// In en, this message translates to:
  /// **'NASA\'s Earth observation datasets offer global, validated, and openly accessible measurements of environmental parameters. They ensure scientific reliability and scalability to any city in the world without needing expensive local sensors.'**
  String get faqEightAnswer;

  /// No description provided for @faqNine.
  ///
  /// In en, this message translates to:
  /// **'How is VYRA different from other navigation apps?'**
  String get faqNine;

  /// No description provided for @faqNineAnswer.
  ///
  /// In en, this message translates to:
  /// **'Unlike Google Maps or Waze, VYRA is not about traffic or speed — it\'s about human health and environmental comfort. It\'s the first routing tool that blends space data, sustainability, and personal well-being into everyday movement.'**
  String get faqNineAnswer;

  /// No description provided for @faqTen.
  ///
  /// In en, this message translates to:
  /// **'What\'s next for VYRA after the hackathon?'**
  String get faqTen;

  /// No description provided for @faqTenAnswer.
  ///
  /// In en, this message translates to:
  /// **'Expand beyond Istanbul to multiple cities, integrate AI explainers (\'why this route is healthier\'), add user personas (e.g., asthma, elderly, cyclist), and connect with city dashboards to support climate-resilient urban planning.'**
  String get faqTenAnswer;

  /// No description provided for @hi.
  ///
  /// In en, this message translates to:
  /// **'Hi'**
  String get hi;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @birthDate.
  ///
  /// In en, this message translates to:
  /// **'Birth Date'**
  String get birthDate;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome back!'**
  String get welcomeBack;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get createAccount;

  /// No description provided for @signInDescription.
  ///
  /// In en, this message translates to:
  /// **'Sign in to continue your healthy journey'**
  String get signInDescription;

  /// No description provided for @signUpDescription.
  ///
  /// In en, this message translates to:
  /// **'Join Vyra and start exploring healthier routes'**
  String get signUpDescription;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// No description provided for @usernameRequired.
  ///
  /// In en, this message translates to:
  /// **'Username is required'**
  String get usernameRequired;

  /// No description provided for @fullNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Full name is required'**
  String get fullNameRequired;

  /// No description provided for @birthDateRequired.
  ///
  /// In en, this message translates to:
  /// **'Birth date is required'**
  String get birthDateRequired;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get invalidEmail;

  /// No description provided for @invalidUsername.
  ///
  /// In en, this message translates to:
  /// **'Username must be 3-50 characters, alphanumeric or underscore only'**
  String get invalidUsername;

  /// No description provided for @invalidFullName.
  ///
  /// In en, this message translates to:
  /// **'Full name must be at least 1 character'**
  String get invalidFullName;

  /// No description provided for @invalidPassword.
  ///
  /// In en, this message translates to:
  /// **'Password must be 8-100 characters with at least one letter and one number'**
  String get invalidPassword;

  /// No description provided for @invalidPasswordConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get invalidPasswordConfirmation;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get passwordTooShort;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @passwordMustContainLetterAndNumber.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one letter and one number'**
  String get passwordMustContainLetterAndNumber;

  /// No description provided for @selectBirthDate.
  ///
  /// In en, this message translates to:
  /// **'Select your birth date'**
  String get selectBirthDate;

  /// No description provided for @passwordLengthError.
  ///
  /// In en, this message translates to:
  /// **'Password must be 8-100 characters with at least one letter and one number'**
  String get passwordLengthError;

  /// No description provided for @usernameLengthError.
  ///
  /// In en, this message translates to:
  /// **'Username must be 3-50 characters, alphanumeric or underscore only'**
  String get usernameLengthError;

  /// No description provided for @fullNameLengthError.
  ///
  /// In en, this message translates to:
  /// **'Full name is required and must be valid'**
  String get fullNameLengthError;

  /// No description provided for @mode.
  ///
  /// In en, this message translates to:
  /// **'Mode'**
  String get mode;

  /// No description provided for @walking.
  ///
  /// In en, this message translates to:
  /// **'Walking'**
  String get walking;

  /// No description provided for @cycling.
  ///
  /// In en, this message translates to:
  /// **'Cycling'**
  String get cycling;

  /// No description provided for @season.
  ///
  /// In en, this message translates to:
  /// **'Season'**
  String get season;

  /// No description provided for @spring.
  ///
  /// In en, this message translates to:
  /// **'Spring'**
  String get spring;

  /// No description provided for @summer.
  ///
  /// In en, this message translates to:
  /// **'Summer'**
  String get summer;

  /// No description provided for @fall.
  ///
  /// In en, this message translates to:
  /// **'Fall'**
  String get fall;

  /// No description provided for @winter.
  ///
  /// In en, this message translates to:
  /// **'Winter'**
  String get winter;

  /// No description provided for @navigate.
  ///
  /// In en, this message translates to:
  /// **'Navigate'**
  String get navigate;

  /// No description provided for @healthiestRoute.
  ///
  /// In en, this message translates to:
  /// **'Healthiest Route'**
  String get healthiestRoute;

  /// No description provided for @fastestRoute.
  ///
  /// In en, this message translates to:
  /// **'Fastest Route'**
  String get fastestRoute;

  /// No description provided for @distance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get distance;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// No description provided for @healthStressIndex.
  ///
  /// In en, this message translates to:
  /// **'Health Stress Index'**
  String get healthStressIndex;

  /// No description provided for @selectMode.
  ///
  /// In en, this message translates to:
  /// **'Select your travel mode'**
  String get selectMode;

  /// No description provided for @selectSeason.
  ///
  /// In en, this message translates to:
  /// **'Select the season'**
  String get selectSeason;

  /// No description provided for @findRoute.
  ///
  /// In en, this message translates to:
  /// **'Find Route'**
  String get findRoute;

  /// No description provided for @routeDetails.
  ///
  /// In en, this message translates to:
  /// **'Route Details'**
  String get routeDetails;

  /// No description provided for @routeFetchError.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch route. Please try again.'**
  String get routeFetchError;

  /// No description provided for @pleaseSignInFirst.
  ///
  /// In en, this message translates to:
  /// **'Please sign in first'**
  String get pleaseSignInFirst;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @createModalSheet.
  ///
  /// In en, this message translates to:
  /// **'Create Modal Sheet'**
  String get createModalSheet;

  /// No description provided for @lastSignIn.
  ///
  /// In en, this message translates to:
  /// **'Last Sign In'**
  String get lastSignIn;

  /// No description provided for @exposure.
  ///
  /// In en, this message translates to:
  /// **'Exposure'**
  String get exposure;

  /// No description provided for @anErrorOccurred.
  ///
  /// In en, this message translates to:
  /// **'An error occurred'**
  String get anErrorOccurred;

  /// No description provided for @checkOutVyra.
  ///
  /// In en, this message translates to:
  /// **'Check out Vyra'**
  String get checkOutVyra;

  /// No description provided for @couldNotLaunch.
  ///
  /// In en, this message translates to:
  /// **'Could not launch'**
  String get couldNotLaunch;

  /// No description provided for @navigatingHealthiestRoute.
  ///
  /// In en, this message translates to:
  /// **'Navigating Healthiest Route'**
  String get navigatingHealthiestRoute;

  /// No description provided for @navigatingFastestRoute.
  ///
  /// In en, this message translates to:
  /// **'Navigating Fastest Route'**
  String get navigatingFastestRoute;

  /// No description provided for @stopNavigation.
  ///
  /// In en, this message translates to:
  /// **'Stop Navigation'**
  String get stopNavigation;

  /// No description provided for @showHeatmap.
  ///
  /// In en, this message translates to:
  /// **'Show Heatmap'**
  String get showHeatmap;

  /// No description provided for @heatmapDescription.
  ///
  /// In en, this message translates to:
  /// **'HSI Data'**
  String get heatmapDescription;

  /// No description provided for @heatmapTooltip.
  ///
  /// In en, this message translates to:
  /// **'Toggle to show health stress index data on the map'**
  String get heatmapTooltip;

  /// No description provided for @locationPermissionTitle.
  ///
  /// In en, this message translates to:
  /// **'We Need Access to Your Location'**
  String get locationPermissionTitle;

  /// No description provided for @locationPermissionDescription.
  ///
  /// In en, this message translates to:
  /// **'To provide you with the best route recommendations and environmental data, we need access to your location. This helps us find the healthiest paths around you.'**
  String get locationPermissionDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'de',
    'en',
    'es',
    'fr',
    'it',
    'pt',
    'ru',
    'tr',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
