// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background container
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            color: Color(0xff1D3D72),
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Text(
                  'Adeena',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Elevate Your Practice with DocRadar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          // Foreground container
          Positioned(
            top: MediaQuery.of(context).size.height * 0.14,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.h,
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // Disable inner scrolling
                  children: [
                    _buildGridItem(
                      context,
                      icon: Icons.calendar_today,
                      label: 'Appointments Management',
                    ),
                    _buildGridItem(
                      context,
                      icon: Icons.star_rate,
                      label: 'My Rating and Reviews',
                    ),
                    _buildGridItem(
                      context,
                      icon: Icons.payment,
                      label: 'Bills and payments',
                    ),
                    _buildGridItem(
                      context,
                      icon: Icons.warning,
                      label: 'Emergency Alerts',
                    ),
                    _buildGridItem(
                      context,
                      icon: Icons.notifications,
                      label: 'Notifications',
                    ),
                    _buildGridItem(
                      context,
                      icon: Icons.person,
                      label: 'Profile Management',
                    ),
                    _buildGridItem(
                      context,
                      icon: Icons.warning_amber,
                      label: 'Confirmation alert',
                    ),
                    _buildGridItem(
                      context,
                      icon: Icons.support_agent,
                      label: 'Help/Support',
                    ),
                    _buildGridItem(
                      context,
                      icon: Icons.logout,
                      label: 'Logout',
                      onTap: () {
                        _showLogoutBottomSheet(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(BuildContext context,
      {required IconData icon, required String label, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue.shade50,
            radius: 30.r,
            child: Icon(icon, size: 30.sp, color: Colors.blue),
          ),
          SizedBox(height: 8.h),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.sp),
          ),
        ],
      ),
    );
  }

  void _showLogoutBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Are you sure you want to logout?',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 12.h),
                    ),
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Perform logout action here
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Logged out successfully')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff1D3D72),
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 12.h),
                    ),
                    child: Text(
                      'Yes, Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
