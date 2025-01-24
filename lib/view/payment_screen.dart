import 'package:flutter/material.dart';

class PaymentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Payments'),
        centerTitle: true, // Center the title
        backgroundColor: Colors.white, // White background for AppBar
        foregroundColor: Colors.black,
        elevation: 0, // Remove shadow
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/payment.png",
                    scale: 3,
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Received', style: TextStyle(fontSize: 16)),
                      Text('Rs. 12,000',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Last 20 transactions', style: TextStyle(color: Colors.grey)),
            Text('Update in 2 hours',
                style: TextStyle(color: Colors.grey, fontSize: 12)),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 6, // Example number of transactions
                itemBuilder: (context, index) {
                  return TransactionItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/payment.png",
                scale: 3,
              ),
              SizedBox(width: 8),
              Text('Money Transfer', style: TextStyle(fontSize: 16)),
            ],
          ),
          OutlinedButton(
            onPressed: () {
              // Handle receipt button press
            },
            child: Text('Receipt', style: TextStyle(color: Colors.black)),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.grey), // Grey border
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
