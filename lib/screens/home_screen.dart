import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/flight_provider.dart';
import '../widgets/flight_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final flightProvider = Provider.of<FlightProvider>(context);
    final flights = flightProvider.flights;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color(0xFF00539B),
        title: const Text(
          'My Flights',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: flights.length,
        itemBuilder: (context, index) {
          return FlightCard(flight: flights[index]);
        },
      ),
    );
  }
}