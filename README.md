# In-Class Activity 13 — Firebase Authentication

## Project Overview
This is a Flutter application that uses Firebase Authentication to allow users to create an account, sign in, manage their password, and sign out. The app also uses an AuthGate to display the correct screen depending on whether the user is signed in.

## Features
- Register an account using email and password.
- Sign in and sign out.
- Display the signed-in user's email on their profile.
- Change passwords by verifying the current password first.
- Display readable error messages and validate user input.
- Keep users signed in after restarting the app.

## Firebase Setup
The app uses Firebase Authentication with the Email/Password sign-in method enabled.

To run the app with your own Firebase project, configure Firebase for Flutter using FlutterFire and enable Email/Password authentication in the Firebase Console.

## How to Run
1. Clone the repository.
2. Open the project in IntelliJ, VSCode, or another Flutter-supported IDE.
3. Run `flutter pub get`.
4. Make sure Firebase is configured for the project.
5. Run `flutter run` on an Android emulator or device.

## Testing
I tested account registration, successful and unsuccessful sign-in, password validation, changing passwords with correct and incorrect current passwords, signing out, and session persistence after restarting the app.

## Previous Activity
The previous Firestore Product Manager implementation from In-Class Activity 12 is preserved in the `InClass-12` branch.