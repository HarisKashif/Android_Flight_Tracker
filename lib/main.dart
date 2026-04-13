import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/flight_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FlightProvider(),
      child: MaterialApp(
        title: 'WestJet Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF00539B),
          ),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}