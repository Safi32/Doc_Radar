import 'package:doc_radar/widgets/my_booking_widget.dart';
import 'package:flutter/material.dart';

class UpcomingAppointments extends StatefulWidget {
  @override
  State<UpcomingAppointments> createState() => _UpcomingAppointmentsState();
}

class _UpcomingAppointmentsState extends State<UpcomingAppointments> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyBookingWidget(
                subtitle: "Reschedule",
                title: "Cancel",
              ),
              MyBookingWidget(
                subtitle: "Reschedule",
                title: "Cancel",
              ),
              MyBookingWidget(
                subtitle: "Reschedule",
                title: "Cancel",
              ),
              MyBookingWidget(
                subtitle: "Reschedule",
                title: "Cancel",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
