// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class hospital_detail_page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                                width: 30.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white),
                                child: Icon(Icons.share, color: Colors.black)),
                            SizedBox(width: 10.w),
                            Container(
                                width: 30.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
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
                  top: 166.h,
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shokat Khanam Clinic",
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.h),
                  Text("Dental, Skin care",
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                  SizedBox(height: 8.h),
                  Divider(
                    height: 2.h,
                    endIndent: 10,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.grey),
                      SizedBox(width: 8.w),
                      Text(
                        "5432 Street no.1, Gulshan-e-Iqbal Lahore",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.grey),
                      SizedBox(width: 8.w),
                      Text("15 min  ·  1.5km  ·  Mon-Sun 11am - 11pm",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildIconButton(Icons.language, "Website"),
                      _buildIconButton(Icons.phone, "Call"),
                      _buildIconButton(Icons.directions, "Direction"),
                      _buildIconButton(Icons.share, "Share"),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            DefaultTabController(
              length: 4,
              child: Column(
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
                  Container(
                    height: 600.h,
                    child: TabBarView(
                      children: [
                        Center(child: Text("Treatments Content")),
                        _buildSpecialistsList(),
                        Center(child: Text("Reviews Content")),
                        Center(child: Text("About Content")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
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

  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue[50],
          child: Icon(icon, color: Colors.black),
        ),
        SizedBox(height: 8.h),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget _buildSpecialistsList() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30.r,
              backgroundColor: Colors.blue[50],
              child: Icon(Icons.person, color: Colors.blue[900]),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 180.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(width: 1.5)),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Icon(
                          Icons.check_box,
                          color: Color(0xff1D3D72),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Professional doctor",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text("Dr. Jane Cooper"),
                Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ))
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dentist"),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 70.w),
                    Text(" l            4.8 (49 Reviews)"),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 400.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Color(0xff1D3D72),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Make Appointment",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
