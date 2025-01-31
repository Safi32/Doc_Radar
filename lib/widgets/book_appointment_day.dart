import 'package:flutter/material.dart';

class BookAppointmentDay extends StatelessWidget {
  const BookAppointmentDay({required this.day, required this.date});

  final String day;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
          ),
          Text(
            date,
          ),
        ],
      ),
    );
  }
}
