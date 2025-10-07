## 🚀 Vyra

Beautiful, localized Flutter app with Mapbox-powered maps, authentication, onboarding, theming, notifications, and a clean feature-first architecture using BLoC and dependency injection.

<br/>

### 🌟 Highlights
- **🔐 Authentication**: Sign in / Sign up flows
- **🗺️ Maps (Mapbox)**: Routes, heatmaps, predictions, simulations
- **📍 Location**: Permission handling and live location access
- **🌓 Theming**: Light/Dark mode with dynamic theme switching
- **🌐 Localization (i18n)**: EN, DE, ES, FR, IT, PT, RU, TR
- **🧠 State Management**: `flutter_bloc` + `hydrated_bloc`
- **🧩 DI Container**: `get_it`
- **📦 Networking**: `dio`
- **✨ UX**: Onboarding, shimmer placeholders, smooth page indicators
- **👤 Profile**: Language, theme, and profile details

<br/>

### 🧱 Architecture
- **Feature-first modules** under `lib/feature/`:
  - `data/` → remote data providers, repositories, models
  - `presentation/` → `cubits/`, `pages/`, `widgets/`
- **Core layer** under `lib/core/`:
  - `pages/` (e.g., `splash`, `language`, `location_permission`, `main`)
  - `utils/` (routing, themes, enums)
- **State management**: BLoC (`flutter_bloc`) with persistence via `hydrated_bloc`
- **Dependency Injection**: `get_it` in `lib/injection_container.dart`
- **Navigation**: Centralized `RouteGenerator` with typed route enum mapping
- **Localization**: `gen_l10n` with ARB files in `lib/l10n/`

<br/>

### 🗂️ Project Structure
```text
lib/
  core/
    pages/
      splash/
      language/
      location_permission/
      main/
    utils/
      routes/
      themes/
    cubits/
  feature/
    auth/
      data/{data_providers,repositories,models}
      presentation/{cubits,pages}
    map/
      data/{data_providers,repositories,models}
      presentation/{cubits,pages,widgets}
    onboarding/
      presentation/{cubits,pages,widgets}
    profile/
      data/{data_providers,repositories,models}
      presentation/{cubits,pages,widgets}
  l10n/
  injection_container.dart
  main.dart
```

<br/>

### 🧩 Key Packages
Core runtime:
- `flutter_bloc`, `hydrated_bloc`
- `get_it`
- `dio`
- `mapbox_maps_flutter`
- `geolocator`, `location`, `permission_handler`
- `flutter_local_notifications`, `timezone`
- `intl`, `flutter_localizations`, `flutter_localization`
- `json_annotation`, `freezed_annotation`
- `path_provider`, `package_info_plus`, `share_plus`, `url_launcher`, `rxdart`, `lottie`, `shimmer`

Codegen/dev:
- `build_runner`, `json_serializable`, `freezed`, `hive_generator`

Fonts & assets:
- InterTight family, app illustrations, flags, logo, onboarding images

<br/>

### 🌍 Localization
Configured via `l10n.yaml` and ARB files in `lib/l10n/`.

Supported locales:
- `en`, `de`, `es`, `fr`, `it`, `pt`, `ru`, `tr`

Main app wiring uses `AppLocalizations`, delegates, and `supportedLocales`.

<br/>

### 🔧 Setup
Prerequisites:
- Flutter (stable), Dart SDK >= 3.7
- Xcode (for iOS), Android Studio or SDK (for Android)
- A Mapbox account and access token

Clone & install:
```bash
git clone <your-repo-url>
cd vyra
flutter pub get
```

Environment variables:
Create a `.env` file at the project root:
```bash
MAPBOX_ACCESS_TOKEN=your_mapbox_token_here
```

Code generation (models/freezed):
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Run:
```bash
flutter run
```

<br/>

### 📱 Platform Notes
Android:
- Ensure location permissions are declared in `AndroidManifest.xml` (already included in the project templates)
- Mapbox requires internet permission (usually present by default)

iOS:
- Ensure `NSLocationWhenInUseUsageDescription` and related keys exist in `Info.plist`
- Run from `Runner` workspace; CocoaPods handled via Flutter toolchain

Notifications:
- Local notifications rely on `flutter_local_notifications` and `timezone`; initialization handled during DI setup

<br/>

### 🧭 Navigation
Centralized routing in `lib/core/utils/routes/route_generator.dart` with named routes for pages.

<br/>

### 🧪 Quality
- Lints via `flutter_lints`
- State immutability and models via `freezed` + `json_serializable`

<br/>

### 📦 Assets & Fonts
- Fonts: InterTight (multiple weights) under `assets/fonts/`
- Illustrations: `assets/illustrations/`
- Images: `assets/images/`

Declared in `pubspec.yaml` and pre-bundled.

<br/>

### 🔒 Environment & Secrets
- Mapbox token is loaded via `flutter_dotenv` in `injection_container.dart`

<br/>

### 🙌 Acknowledgements
- Map rendering by Mapbox Maps SDK for Flutter
- Localization via Flutter `gen_l10n`
- BLoC by Felix Angelov and contributors

<br/>

### 🧰 Troubleshooting
- If codegen fails, re-run: `flutter pub run build_runner build --delete-conflicting-outputs`
- If iOS fails to build, try: `cd ios && pod repo update && pod install && cd ..`
- Verify `.env` is present and `MAPBOX_ACCESS_TOKEN` is valid

<br/>

### 💡 Contributing
PRs and issues are welcome. Please describe the change, include screenshots (see placeholders above), and ensure CI passes.

