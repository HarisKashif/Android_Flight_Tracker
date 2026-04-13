import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:westjet_demo/providers/flight_provider.dart';
import 'package:westjet_demo/screens/home_screen.dart';

void main() {
  testWidgets('Home screen shows flight list', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => FlightProvider(),
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );

    expect(find.text('My Flights'), findsOneWidget);
    expect(find.text('WS 201'), findsOneWidget);
    expect(find.text('WS 408'), findsOneWidget);
  });

  testWidgets('Tapping a flight card navigates to detail screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => FlightProvider(),
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );

    await tester.tap(find.text('WS 201'));
    await tester.pumpAndSettle();

    expect(find.text('Flight Route'), findsOneWidget);
    expect(find.text('Check In'), findsOneWidget);
  });

  testWidgets('Check in button updates state', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => FlightProvider(),
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );

    await tester.tap(find.text('WS 201'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Check In'));
    await tester.pumpAndSettle();

    expect(find.text('You are checked in!'), findsOneWidget);
  });
}