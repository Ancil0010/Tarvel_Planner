import 'package:flutter/material.dart';

class DestinationSelection extends StatefulWidget {
  @override
  _DestinationSelectionState createState() => _DestinationSelectionState();
}

class _DestinationSelectionState extends State<DestinationSelection> {
  String? selectedDestination;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: DropdownButtonFormField<String>(
        value: selectedDestination,
        items: ['Destination 1', 'Destination 2', 'Destination 3']
            .map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedDestination = value!;
          });
        },
        decoration: InputDecoration(
          labelText: 'Select Destination',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}