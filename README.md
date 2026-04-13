# Flight Tracker App

A Flutter mobile application built to demonstrate mobile development fundamentals,
including state management, multi-screen navigation, and CI/CD integration.
Built to explore Flutter and Dart from scratch with no prior mobile development experience.

## Features

- Flight list screen showing multiple routes
- Flight detail screen with route and timing information
- Mock check-in functionality with state management
- Material Design UI with consistent color scheme
- CI/CD pipeline via GitHub Actions

## Tech Stack

- Flutter & Dart
- Provider for state management
- Material Design 3
- Widget testing
- GitHub Actions for CI/CD

## Screens

### Home Screen
Displays a list of flights with flight number, origin, destination,
departure/arrival times, and status badge (On Time / Delayed).

### Flight Detail Screen
Shows full flight information and a check-in button.
State is managed via Provider and reflects back on the home screen instantly.

## What I Learned

This was my first Flutter app, built with no prior mobile development experience.
Key concepts covered:
- Flutter widget tree and composition
- Dart class models
- Provider state management pattern
- Multi-screen navigation with Navigator
- Writing widget tests
- Setting up CI/CD with GitHub Actions

## Running the App

```bash
flutter pub get
flutter run
```

## Running Tests

```bash
flutter test
```