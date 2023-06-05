import 'package:flutter/material.dart';

class BookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {
          // Booking logic
        },
        child: Text('Book Now'),
      ),
    );
  }
}