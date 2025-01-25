import 'package:flutter/material.dart';

class CustomButtons {
  static Widget bookAppointmentButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[900],
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text("Book Appointment", style: TextStyle(color: Colors.white)),
    );
  }
}
