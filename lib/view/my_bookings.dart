import 'package:doc_radar/widgets/cancelled_appointment.dart';
import 'package:doc_radar/widgets/completed_appointment.dart';
import 'package:doc_radar/widgets/upcoming_appointments.dart'; // Ensure the path is correct
import 'package:flutter/material.dart';

class MyBookings extends StatelessWidget {
  const MyBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            title: const Text(
              "My Bookings",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
            bottom: const TabBar(
              indicatorColor: Colors.grey,
              tabs: [
                Tab(text: "Upcoming"),
                Tab(text: "Completed"),
                Tab(text: "Cancelled"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              UpcomingAppointments(),
              CompletedAppointment(),
              CancelledAppointment()
            ],
          ),
        ),
      ),
    );
  }
}
