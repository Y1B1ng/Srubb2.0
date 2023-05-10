import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'timeSlot.dart';

class NextPage extends StatefulWidget {
  final TimeSlot timeSlot;

  const NextPage({Key? key, required this.timeSlot}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  TimeSlot? _selectedTimeSlot;

  @override
  void initState() {
    super.initState();
    _selectedTimeSlot = widget.timeSlot;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text('Selected time slot: $_selectedTimeSlot'),
      ),
    );
  }
}

//sample
showDialog(
context: context,
builder: (context) {
return AlertDialog(
title: Text('Booking confirmed'),
content: Column(
mainAxisSize: MainAxisSize.min,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('You have booked the following time slots:'),
SizedBox(height: 8),
...selectedTimeSlots.map((slot) => Text(' ${slot.time}')),
],
),
actions: [
TextButton(
child: Text('OK'),
onPressed: () {
Navigator.pop(context);
// Update the seats available after booking
setState(() {
selectedTimeSlots.forEach((slot) {
final index = _timeSlots.indexOf(slot);
_timeSlots[index] = TimeSlot(
time: slot.time,
seatsAvailable: slot.seatsAvailable - 1,
);
_selected[index] = false;
});
});
},
),
],
);
},
);