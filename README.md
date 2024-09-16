# Flutter App

## Overview

This is a basic Flutter application with a splash screen, login screen, OTP verification, registration screen, and home screen displaying a list of products fetched from an API. The app is built using Flutter, a UI toolkit for building natively compiled applications for mobile from a single codebase.

## Features

- **Splash Screen**: A splash screen to introduce the app.
- **Login Screen**: Mobile number input with OTP verification.
- **OTP Verification**: Verifies OTP sent to the user's mobile number.
- **Registration Screen**: For new users to sign up with name, password, and referral code.
- **Home Screen**: Displays a list of products fetched from an API.

## Screens

1. Splash Screen
2. Login Screen (Mobile number input)
3. OTP Screen (Verification)
4. Registration Screen (New user sign-up)
5. Home Screen (Displays products)

## Requirements

- Flutter SDK 3.0 or higher
- Android Studio/Visual Studio Code (or any IDE with Flutter support)
- Git (for version control)
- Device or emulator to run the application

## Installation

Follow these instructions to install and run the Flutter app on your local machine:

### Step 1: Install Flutter
1. Download and install the Flutter SDK from the [Flutter official website](https://flutter.dev/docs/get-started/install).
2. Set the environment variable to add Flutter to your system's path.
   - On Windows, this will be `C:\src\flutter\bin`.

### Step 2: Clone the Repository
```bash
git clone https://github.com/yourusername/flutter_app.git

Step 3: Install Dependencies
cd flutter_app
flutter pub get

Step 4: Run the App
flutter run



API Information
Splash Screen API: Sends device information to initialize the app.
Login API: Accepts mobile number and sends OTP.
OTP Verification API: Verifies OTP and determines if the user is new or existing.
Registration API: Registers new users by storing details like email, password, and referral code.
Home Screen API: Fetches a list of available products and banners to display.

Folder Structure

flutter_app/
 ├── lib/
 │   ├── main.dart              # Main file to start the application
 │   ├── screens/
 │   │   ├── splash_screen.dart # Splash screen implementation
 │   │   ├── login_screen.dart  # Login screen implementation
 │   │   ├── otp_screen.dart    # OTP verification screen
 │   │   ├── registration_screen.dart  # Registration screen implementation
 │   │   └── home_screen.dart   # Home screen implementation
 └── pubspec.yaml               # Flutter project configuration file


