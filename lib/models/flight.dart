class Flight {
  final String flightNumber;
  final String origin;
  final String destination;
  final String departureTime;
  final String arrivalTime;
  final String status;
  bool isCheckedIn;

  Flight({
    required this.flightNumber,
    required this.origin,
    required this.destination,
    required this.departureTime,
    required this.arrivalTime,
    required this.status,
    this.isCheckedIn = false,
  });
}