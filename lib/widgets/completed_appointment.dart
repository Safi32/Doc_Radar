import 'package:doc_radar/widgets/my_booking_widget.dart';
import 'package:flutter/material.dart';

class CompletedAppointment extends StatelessWidget {
  const CompletedAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyBookingWidget(
                showReminder: false,
                subtitle: "Add Review",
                title: "Re - book",
              ),
              MyBookingWidget(
                showReminder: false,
                subtitle: "Add Review",
                title: "Re - book",
              ),
              MyBookingWidget(
                showReminder: false,
                subtitle: "Add Review",
                title: "Re - book",
              ),
              MyBookingWidget(
                showReminder: false,
                subtitle: "Add Review",
                title: "Re - book",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
