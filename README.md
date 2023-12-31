# OTPless Auth

A Flutter implementation of OTPless Authentication.

## Getting Started

This project is a starting point for OTPless Integration with Flutter Android.

### OTPless Integration Points

- ```flutter pub add otpless_flutter:2.0.0```
- [Android Manifest](./android/app/src/main/AndroidManifest.xml) (**Lines** *8,9 & 26-33*)
- [MainActivity.kt](./android/app/src/main/kotlin/com/bytebane/otpless_auth/MainActivity.kt) (**Lines** *5,6 & 11-25*)
- [HomePage.dart](./lib/home_page.dart) (**Lines** *4 & 26-49*)
- ***Thats it***. Add your own logic to `openLoginPage()` fuction and use it to open OTPless Auth Page and receive User details.

> Note: OTPless Auth Page won't work unless you whitelist your App by adding App's BundleId in [OTPless dashboard](https://otpless.com/platforms/flutter).
