import 'package:flutter/material.dart';

class ConfirmationAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Confirmation Alert"),
        actions: [],
      ),
      body: ListView(
        // Use ListView to allow scrolling if needed
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildBookingCard(
            "Aug 25, 2024 - 10:00 AM",
            "Fatima",
            "5432 Street no.1, Gulshan-e-Iqbal Lahore",
            "#DRW5910",
          ),
          _buildBookingCard(
            "Aug 25, 2024 - 10:00 AM",
            "Nasir Rehman",
            "5432 Street no.1, Gulshan-e-Iqbal Lahore",
            "#DRW5910",
          ),
          _buildBookingCard(
            "Aug 25, 2024 - 10:00 AM",
            "ayesha",
            "5432 Street no.1, Gulshan-e-Iqbal Lahore",
            "#DRW5910",
            isLast: true, // Mark the last card for special button
          ),
        ],
      ),
    );
  }

  Widget _buildBookingCard(
      String time, String name, String address, String bookingId,
      {bool isLast = false}) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  time,
                  style: TextStyle(
                    color: Color(0xff726F6F),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  height: 52,
                  width: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffE4EDF8),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16, color: Colors.black),
                        SizedBox(width: 4),
                        Text(address,
                            style: TextStyle(fontSize: 10, color: Colors.grey)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.lock_clock, size: 16, color: Colors.black),
                        SizedBox(width: 4),
                        Text("Booking ID: $bookingId",
                            style: TextStyle(fontSize: 10, color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(
              color: Colors.grey[400],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Add the action for "Call Patient" here
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFF1D3D78),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "Accept",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Add the action for "Navigate" here
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFF1D3D78),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
