import 'package:flutter/material.dart';

class BookApointmentTime extends StatelessWidget {
  const BookApointmentTime({required this.time});

  final String time;

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
          Center(
            child: Text(
              time,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
