import 'package:flutter/material.dart';

class ClinicScreen extends StatefulWidget {
  @override
  _ClinicScreenState createState() => _ClinicScreenState();
}

class _ClinicScreenState extends State<ClinicScreen> {
  int _selectedRating = 0; // Holds the selected rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D3D78),
      body: SafeArea(
        child: Column(
          children: [
            // Blue Header Section
            Container(
              height: 150,
              width: double.infinity,
              color: Color(0xff1D3D78),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new, color: Colors.white),
                    Spacer(),
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.share, color: Color(0xff747474))),
                    SizedBox(width: 10),
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite_border,
                            color: Color(0xff747474))),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  // White Card Section
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 40), // Space for the review tag
                          Text(
                            'Shokat Khanam Clinic',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Dental, Skin care'),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.grey),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  '5432 Street no. 1, Gulshan-e-Iqbal Lahore',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.access_time, color: Colors.grey),
                              SizedBox(width: 8),
                              Text(
                                '15 min',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '1.5km   Mon-Sun | 11am - 11pm',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Center(
                            child: Text(
                              'Your overall rating for this facility',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff726F6F)),
                            ),
                          ),
                          SizedBox(height: 16),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(5, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedRating =
                                          index + 1; // Update rating
                                    });
                                  },
                                  child: Icon(
                                    index < _selectedRating
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: index < _selectedRating
                                        ? Colors.orange
                                        : Colors.grey,
                                    size: 32,
                                  ),
                                );
                              }),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text('Add reviews'),
                          SizedBox(height: 8),
                          TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintText: 'Enter here',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.camera_alt, color: Color(0xff726F6F)),
                              SizedBox(width: 10),
                              Text(
                                "add photo",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff726F6F)),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                print('User selected rating: $_selectedRating');
                              },
                              child: Text(
                                'Submit',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff1D3D78),
                                minimumSize: Size(120, 48),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Review Tag
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Color(0xff747474),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          SizedBox(width: 4),
                          Text(
                            '4.8 (1k+ Reviews)',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
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
