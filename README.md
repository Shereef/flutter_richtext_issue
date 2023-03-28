# Flutter RichText issue

This projects portrays an issue with finding rich text

Look at the [workflow run](https://github.com/Shereef/flutter_richtext_issue/actions/runs/4542453551/jobs/8005885430#step:6:88) for a log of the `flutter test` or `flutter test --verbose`

## steps to reproduce

- install flutter
- clone this repo
- `flutter pub get`
- `flutter test`
- all tests should pass but they fail

```
## Flutter doctor verbose
$ flutter doctor -v
[✓] Flutter (Channel stable, 3.7.8, on macOS 13.2.1 22D68 darwin-arm64, locale en-US)
    • Flutter version 3.7.8 on channel stable at /Users/shereef.marzouk/Dev/flutter
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision 90c64ed42b (7 days ago), 2023-03-21 11:27:08 -0500
    • Engine revision 9aa7816315
    • Dart version 2.19.5
    • DevTools version 2.20.1

[✓] Android toolchain - develop for Android devices (Android SDK version 33.0.0)
    • Android SDK at /Users/shereef.marzouk/Library/Android/sdk
    • Platform android-33, build-tools 33.0.0
    • Java binary at: /Applications/Android Studio.app/Contents/jbr/Contents/Home/bin/java
    • Java version OpenJDK Runtime Environment (build 11.0.15+0-b2043.56-8887301)
    • All Android licenses accepted.

[✓] Xcode - develop for iOS and macOS (Xcode 14.2)
    • Xcode at /Applications/Xcode.app/Contents/Developer
    • Build 14C18
    • CocoaPods version 1.12.0

[✓] Chrome - develop for the web
    • Chrome at /Applications/Google Chrome.app/Contents/MacOS/Google Chrome

[✓] Android Studio (version 2022.1)
    • Android Studio at /Applications/Android Studio.app/Contents
    • Flutter plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/9212-flutter
    • Dart plugin can be installed from:
      🔨 https://plugins.jetbrains.com/plugin/6351-dart
    • Java version OpenJDK Runtime Environment (build 11.0.15+0-b2043.56-8887301)

[✓] VS Code (version 1.76.2)
    • VS Code at /Applications/Visual Studio Code.app/Contents
    • Flutter extension version 3.60.0

[✓] Connected device (3 available)
    • iPhone 14 Pro Max (mobile) • 9C9C865F-2E02-408D-B422-A6CB7948BF96 • ios            • com.apple.CoreSimulator.SimRuntime.iOS-16-2 (simulator)
    • macOS (desktop)            • macos                                • darwin-arm64   • macOS 13.2.1 22D68 darwin-arm64
    • Chrome (web)               • chrome                               • web-javascript • Google Chrome 111.0.5563.110

[✓] HTTP Host Availability
    • All required HTTP hosts are available

• No issues found!
```
