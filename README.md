# CredPal Assessment Flutter App


## Kindly find the Google Drive link to the apk and app screenshot below
https://drive.google.com/drive/folders/1a67-qfuUZkWcg8bmxJB6njzvgpWQL4iO?usp=sharing


Flutter app with responsive design and custom UI components.

## Prerequisites

- Flutter SDK ^3.10.0
- Android Studio/VS Code with Flutter extensions
- Xcode (for iOS on macOS)

## Quick Start

```bash
# Install dependencies
flutter pub get

# Run on connected device/emulator
flutter run

# Run on specific platform
flutter run -d android    # Android
flutter run -d ios        # iOS
flutter run -d chrome     # Web
```

## Build Commands

### Debug Builds
```bash
flutter build apk --debug    # Android
flutter build ios --debug    # iOS
flutter build web --debug    # Web
```

### Release Builds
```bash
flutter build apk --release           # Android APK
flutter build appbundle --release     # Android App Bundle
flutter build ios --release           # iOS
flutter build web --release           # Web
```

## Debugging

```bash
flutter run --debug          # Debug mode
flutter analyze              # Check issues
flutter test                 # Run tests
flutter run --profile        # Performance testing
```

**Hot Reload**: Press `r` in terminal
**Hot Restart**: Press `R` in terminal

## Troubleshooting

```bash
# Fix dependency issues
flutter clean && flutter pub get

# iOS build issues (macOS)
cd ios && pod install && cd .. && flutter clean && flutter run

# Android license issues
flutter doctor --android-licenses
```

## Dependencies

- `flutter_screenutil: ^5.9.3` - Responsive design
- `google_fonts: ^6.3.2` - Google Fonts
- `animated_splash_screen: ^1.3.0` - Splash screen
- `flutter_staggered_grid_view` - Grid layout
- `cupertino_icons: ^1.0.8` - iOS icons

## Assets

- Custom fonts: Avenir (Black, Book, Heavy, Regular) and Axiforma Bold
- Design size: 414 x 896 (iPhone dimensions)
