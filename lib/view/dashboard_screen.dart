import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light gray background
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color(0xFF1D3D78), // Dark blue top bar
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    "Adeenah",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Elevate Your Practice with DocRadar",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  // White card containing the icons
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      shrinkWrap: true,
                      physics:
                          NeverScrollableScrollPhysics(), // Disable scrolling within GridView
                      children: [
                        _buildDashboardItem(
                            Icons.calendar_today, "Appointments\nManagement"),
                        _buildDashboardItem(
                            Icons.star, "My Rating and\nReviews"),
                        _buildDashboardItem(
                            Icons.payments, "Bills and\npayments"),
                        _buildDashboardItem(Icons.warning, "Emergency\nAlerts",
                            color: Colors.red), // Red icon
                        _buildDashboardItem(
                            Icons.notifications, "Notifications"),
                        _buildDashboardItem(
                            Icons.person, "Profile\nManagement"),
                        _buildDashboardItem(
                            Icons.notification_important_outlined,
                            "Confirmation alert",
                            color: Colors.orange),
                        _buildDashboardItem(Icons.help, "Help/Support"),
                        _buildDashboardItem(Icons.logout, "Logout"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardItem(IconData icon, String label, {Color? color}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
            size: 30,
            color: color ?? Colors.grey[600]), // Use grey if no color provided
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
