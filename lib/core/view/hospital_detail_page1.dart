// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../view/book_appointment.dart';
import 'appointment_booking.dart';

class HospitalDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200.h,
                color: Color(0xff1D3D72),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 30,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white),
                              child: Icon(Icons.share, color: Colors.black)),
                          SizedBox(width: 10.w),
                          Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white),
                              child: Icon(Icons.favorite_border,
                                  color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 160.h,
                left: MediaQuery.of(context).size.width / 2 - 50.w,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 10),
                    ],
                  ),
                  child: Positioned(
                    top: 50,
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 20.sp),
                        SizedBox(width: 5.w),
                        Text(
                          "4.8 (1k+ Reviews)",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shokat Khanam Clinic",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Dental, Skin care",
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                ),
                SizedBox(height: 12.h),
                Divider(
                  height: 2,
                  endIndent: 10,
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.black, size: 20.sp),
                    SizedBox(width: 5.w),
                    Text(
                      "5432 Street no.1, Gulshan-e-Iqbal Lahore",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Icon(Icons.access_time, color: Colors.black, size: 20.sp),
                    SizedBox(width: 5.w),
                    Text(
                      "15 min  ·  1.5km  ·  Mon-Sun | 11am - 11pm",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _iconWithLabel(Icons.language, "Website"),
                    _iconWithLabel(Icons.phone, "Call"),
                    _iconWithLabel(Icons.map, "Direction"),
                    _iconWithLabel(Icons.share, "Share"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          DefaultTabController(
            length: 4,
            child: Container(
              height: 50.h,
              color: Colors.grey[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.blue[900],
                    tabs: [
                      Tab(text: "Treatments"),
                      Tab(text: "Specialists"),
                      Tab(text: "Reviews"),
                      Tab(text: "About"),
                    ],
                  ),
                  // _tabItem("Treatments", isSelected: true),
                  // _tabItem("Specialists", isSelected: false),
                  // _tabItem("Reviews", isSelected: false),
                  // _tabItem("About", isSelected: false),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: ListView(
                children: [
                  _treatmentItem("Dental"),
                  _treatmentItem("Skin Care"),
                  _treatmentItem("Eye Care"),
                  _treatmentItem("General"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => AppointmentBooking());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff1D3D72),
                minimumSize: Size(30, 50.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.r),
                ),
              ),
              child: Text(
                "Book Appointment",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 24.sp), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore, size: 24.sp), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book, size: 24.sp), label: 'Bookings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 24.sp), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _iconWithLabel(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundColor: Colors.blue[50],
          child: Icon(icon, size: 20.sp),
        ),
        SizedBox(height: 5.h),
        Text(
          label,
          style: TextStyle(fontSize: 12.sp, color: Colors.black),
        ),
      ],
    );
  }

  // Widget _tabItem(String label, {required bool isSelected}) {
  //   return Text(
  //     label,
  //     style: TextStyle(
  //       fontSize: 14.sp,
  //       fontWeight: FontWeight.bold,
  //       color: isSelected ? Colors.blue : Colors.grey,
  //       decoration: isSelected ? TextDecoration.underline : TextDecoration.none,
  //     ),
  //   );
  // }

  Widget _treatmentItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
          side: BorderSide(color: Colors.black),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        ),
        trailing:
            Icon(Icons.arrow_forward_ios, size: 14.sp, color: Colors.black),
        onTap: () {},
      ),
    );
  }
}
