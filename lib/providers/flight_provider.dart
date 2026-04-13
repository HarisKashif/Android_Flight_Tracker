import 'package:flutter/material.dart';
import '../models/flight.dart';

class FlightProvider extends ChangeNotifier {
  final List<Flight> _flights = [
    Flight(
      flightNumber: 'WS 201',
      origin: 'Calgary (YYC)',
      destination: 'Toronto (YYZ)',
      departureTime: '6:00 AM',
      arrivalTime: '11:30 AM',
      status: 'On Time',
    ),
    Flight(
      flightNumber: 'WS 408',
      origin: 'Calgary (YYC)',
      destination: 'Vancouver (YVR)',
      departureTime: '9:15 AM',
      arrivalTime: '10:45 AM',
      status: 'On Time',
    ),
    Flight(
      flightNumber: 'WS 533',
      origin: 'Calgary (YYC)',
      destination: 'Montreal (YUL)',
      departureTime: '1:30 PM',
      arrivalTime: '7:15 PM',
      status: 'Delayed',
    ),
    Flight(
      flightNumber: 'WS 719',
      origin: 'Calgary (YYC)',
      destination: 'Edmonton (YEG)',
      departureTime: '4:45 PM',
      arrivalTime: '5:30 PM',
      status: 'On Time',
    ),
  ];

  List<Flight> get flights => _flights;

  void checkIn(Flight flight) {
    flight.isCheckedIn = true;
    notifyListeners();
  }
}