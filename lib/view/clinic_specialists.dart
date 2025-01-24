import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'appointment_booking.dart';

class SpecialistPage extends StatefulWidget {
  @override
  _SpecialistPageState createState() => _SpecialistPageState();
}

class _SpecialistPageState extends State<SpecialistPage> {
  String selectedType = 'All';
  bool isHeartSelected = false; // Tracks the state of the heart icon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Shokat Khanam specialists',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: InkWell(onTap: () {}, child: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildTypeButton('All'),
                SizedBox(width: 8.0),
                _buildTypeButton('Dentist'),
                SizedBox(width: 8.0),
                _buildTypeButton('General'),
                SizedBox(width: 8.0),
                _buildTypeButton('Cardio'),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView(
              children: [
                _buildSpecialistCard(
                  name: 'Dr. Jane Cooper',
                  type: 'Dentist',
                  reviews: 49,
                  rating: 4.5,
                  isSelected:
                      selectedType == 'Dentist' || selectedType == 'All',
                ),
                _buildSpecialistCard(
                  name: 'Dr. Jane Cooper',
                  type: 'Dentist',
                  reviews: 17,
                  rating: 4.5,
                  isSelected:
                      selectedType == 'Dentist' || selectedType == 'All',
                ),
                _buildSpecialistCard(
                  name: 'Dr. Jane Cooper',
                  type: 'General',
                  reviews: 90,
                  rating: 4.5,
                  isSelected:
                      selectedType == 'General' || selectedType == 'All',
                ),
                _buildSpecialistCard(
                  name: 'Dr. Jane Cooper',
                  type: 'Cardio',
                  reviews: 49,
                  rating: 4.5,
                  isSelected: selectedType == 'Cardio' || selectedType == 'All',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTypeButton(String type) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedType = type; // Update the selected type
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        decoration: BoxDecoration(
          color: selectedType == type ? Color(0xff1D3D78) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(width: 1, color: Colors.black // Add rounded corners
                  ),
        ),
        child: Text(
          type,
          style: TextStyle(
            color: selectedType == type ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildSpecialistCard({
    required String name,
    required String type,
    required int reviews,
    required double rating,
    required bool isSelected,
  }) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 92,
                  width: 82,
                  decoration: BoxDecoration(
                      color: Color(0xffE4EDF8),
                      borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/verify.png",
                              scale: 3,
                            ),
                            // SizedBox(width: 7),
                            Text(
                              "Professional Doctor",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff2E2E2E)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Dr.Jane Cooper",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Dentist",
                      style: TextStyle(fontSize: 12, color: Color(0xff726F6F)),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(
                            0xffFF9529,
                          ),
                          size: 12,
                        ), // 1st yellow star
                        Icon(
                          Icons.star,
                          color: Color(
                            0xffFF9529,
                          ),
                          size: 12,
                        ), // 2nd yellow star
                        Icon(
                          Icons.star,
                          color: Color(0xffFF9529),
                          size: 12,
                        ), // 3rd yellow star
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 12,
                        ), // 1st grey star
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 12,
                        ), // 2nd grey star
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "|",
                          style:
                              TextStyle(color: Color(0xffC8C8C8), fontSize: 12),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "49 Reviews",
                          style:
                              TextStyle(color: Color(0xffC8C8C8), fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isHeartSelected = !isHeartSelected; // Toggle the state
                    });
                  },
                  child: Icon(
                    isHeartSelected ? Icons.favorite : Icons.favorite_border,
                    color: isHeartSelected
                        ? Colors.red
                        : Colors.grey, // Toggle color
                    size: 28,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                Get.to(() => AppointmentBooking());
              },
              child: Container(
                width: double.infinity, // Full-width button
                padding: EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: Color(0xff1D3D78), // Dynamic color
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                alignment: Alignment.center, // Center the text
                child: Text(
                  'Make Appointment',
                  style: TextStyle(
                    color: Colors.white, // Dynamic text color
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
