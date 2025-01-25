// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:doc_radar/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/reusable_button_styles.dart';
import '../constant/reusable_text_styles.dart';

class hospital_detail_page3 extends StatelessWidget {
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
                      buildIconButton(Icons.language, "Website"),
                      buildIconButton(Icons.phone, "Call"),
                      buildIconButton(Icons.directions, "Direction"),
                      buildIconButton(Icons.share, "Share"),
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
                        Center(child: Text("Reviews Content")),
                        _buildReviewsSection(),
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

  Widget buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue[50],
          child: Icon(icon, color: Colors.blue[900]),
        ),
        SizedBox(height: 8.h),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget _buildReviewsSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Reviews", style: CustomTextStyles.titleStyle),
              GestureDetector(
                onTap: () {},
                child: Text("add review", style: CustomTextStyles.linkStyle),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          TextField(
            decoration: InputDecoration(
              hintText: "search in reviews",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey, width: 1),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilterChip(label: Text("verified"), onSelected: (_) {}),
              FilterChip(label: Text("latest"), onSelected: (_) {}),
              FilterChip(label: Text("photos"), onSelected: (_) {}),
            ],
          ),
          SizedBox(height: 16.h),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[50],
              child: Icon(Icons.person, color: Colors.blue[900]),
            ),
            title: Text("Dail Ali"),
            subtitle: Text("45 followers"),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.orange, size: 16),
                Text("5.0"),
                Text("11 months ago", style: TextStyle(fontSize: 12.sp)),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          CustomButtons.bookAppointmentButton(),
        ],
      ),
    );
  }
}
