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

  testWidgets('Flight cards are displayed', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => FlightProvider(),
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );

    expect(find.text('WS 201'), findsOneWidget);
    expect(find.text('WS 533'), findsOneWidget);
    expect(find.text('WS 719'), findsOneWidget);
    expect(find.text('On Time'), findsWidgets);
    expect(find.text('Delayed'), findsOneWidget);
  });

  testWidgets('Flight status badges are shown', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => FlightProvider(),
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );

    expect(find.text('On Time'), findsWidgets);
    expect(find.text('Delayed'), findsOneWidget);
  });
}