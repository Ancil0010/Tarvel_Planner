import 'package:flutter/material.dart';
import 'attraction.dart';
import 'booking.dart';
import 'destination.dart';
import 'flight.dart';
import 'hotel.dart';
import 'weather.dart';



class TravelHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Planner'),
      ),
      body: Column(
        children: [
          DestinationSelection(),
          Expanded(
            child: Row(
              children: [
                Expanded(child: FlightInformation()),
                Expanded(child: HotelInformation()),
              ],
            ),
          ),
          Expanded(child: Attractions()),
          WeatherUpdates(),
          BookingButton(),
        ],
      ),
    );
  }
}