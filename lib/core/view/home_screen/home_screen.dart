// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../view/category.dart';
import '../../../view/locate_near_by_doctors.dart';
import '../../constant/util.dart';
import '../../custom_widget/browse_custom_contanor.dart';
import '../../custom_widget/hospital_custom_card.dart';
import '../nearbyhospitalscreen.dart';

class HomeScreenss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170.h,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(43),
                ),
                color: const Color(0xff1D3D78),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 50.0,
                    left: 16.0,
                    right: 16), // Adds spacing around content
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 14.sp,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 15.sp, // Icon size
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  'Taxila',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffF6F2F2),
                          ),
                          child: Stack(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Colors.black.withOpacity(0.7),
                                size: 24.sp,
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  width: 8.w,
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Hey, user 👋',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 220.w,
                        height: 121.h,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 74, 139, 205),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12),
                          child: Column(
                            children: [
                              Text(
                                'discover nearby doctors and clinics effortlessly, tailored to your location.',
                                style: TextStyle(
                                    fontFamily: 'segoe',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => LocateNearByDoctors());
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    'Locate nearby doctors',
                                    style: TextStyle(
                                      fontFamily: 'segoe',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 110.w,
                        height: 121.h,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 100, 100),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 18.0, left: 5, right: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(AppIcons().emergance),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Emergency assistance',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Browse by Specialty',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black))),
                      InkWell(
                        onTap: () {
                          Get.to(() => Category());
                        },
                        child: Text(
                          'See All',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4F89F4)),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff4F89F4)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    width: screenWidth,
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: BrowseCustomContanor(
                            title: 'Cardiology',
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nearby Hospitals/Clinics',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black))),
                      InkWell(
                        onTap: () {
                          Get.to(() => NearbyHospitalsScreen());
                        },
                        child: Text(
                          'See All',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4F89F4)),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff4F89F4)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    height: 260,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HospitalCustomCard(
                            imagePath: AppIcons().hospital,
                            hospitalName: 'Shokat Khanam Hospital',
                            rating: 4.8,
                            distance: 3.5,
                            walkingTime: 50,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
