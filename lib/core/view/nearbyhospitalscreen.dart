// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'hospital_detail_page1.dart';

class NearbyHospitalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Nearby Hospitals',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black, size: 24.sp),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 24.sp),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FilterChipWidget(label: '  All  ', isSelected: false),
                  SizedBox(
                    width: 12.w,
                  ),
                  FilterChipWidget(label: 'Dental care', isSelected: false),
                  SizedBox(
                    width: 12.w,
                  ),
                  FilterChipWidget(label: 'General', isSelected: false),
                  SizedBox(
                    width: 12.w,
                  ),
                  FilterChipWidget(label: 'Skin Care', isSelected: false),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Get.to(() => HospitalDetailPage());
                    },
                    child: HospitalCard());
              },
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
}

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;

  const FilterChipWidget({
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.r),
      ),
      label: Text(
        label,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black, fontSize: 14.sp),
      ),
      selected: isSelected,
      onSelected: (value) {},
      selectedColor: Colors.blue,
      backgroundColor: Colors.grey[200],
    );
  }
}

class HospitalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 160.h,
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.r),
                  topRight: Radius.circular(22.r)),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10.h,
                  right: 10.w,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 24.sp,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 230, top: 120, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    child: Row(
                      children: [
                        Icon(Icons.star, size: 15.sp, color: Colors.orange),
                        // SizedBox(
                        //   width: 5.w,
                        // ),
                        Text(
                          '4.8(1k+ Reviews)',
                          style: TextStyle(color: Colors.black, fontSize: 7.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shokat Khanam Clinic',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Text('Dental', style: TextStyle(fontSize: 14.sp)),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16.sp, color: Colors.grey),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Text(
                        '5432 Street no.1, Gulshan-e-Iqbal Lahore',
                        style: TextStyle(fontSize: 12.sp),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 16.sp, color: Colors.grey),
                    SizedBox(width: 4.w),
                    Text('15 min', style: TextStyle(fontSize: 12.sp)),
                    SizedBox(width: 16.w),
                    Icon(Icons.directions, size: 16.sp, color: Colors.grey),
                    SizedBox(width: 4.w),
                    Text('1.5 km', style: TextStyle(fontSize: 12.sp)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
