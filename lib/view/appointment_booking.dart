import 'package:doc_radar/widgets/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_screen.dart';

class AppointmentBooking extends StatefulWidget {
  @override
  _AppointmentBookingState createState() => _AppointmentBookingState();
}

class _AppointmentBookingState extends State<AppointmentBooking> {
  int _selectedRating = 0; // Holds the selected rating
  int selectedIndex = 1;
  int selectedIndex2 = 1;

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
              child: Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: 18),
                  height: double.infinity,
                  // height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
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
                          Divider(
                            color: Color(0xffF1EDED),
                          ),
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customRow(
                                imge: "assets/world.png",
                                text: "Website",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              customRow(
                                imge: "assets/call1.png",
                                text: "Call",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              customRow(
                                imge: "assets/directions.png",
                                text: "Direction",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              customRow(
                                imge: "assets/share.png",
                                text: "Share",
                              ),
                            ],
                          ),

                          SizedBox(height: 16),
                          Divider(
                            color: Color(0xffF1EDED),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Book Appointment',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Day',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black.withOpacity(0.75),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: List.generate(4, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(4.0),
                                    width: 80.0,
                                    // height: 120.0,
                                    decoration: BoxDecoration(
                                      color: selectedIndex == index
                                          ? Color(0xffC6CEDD)
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(14.0),
                                      border: Border.all(
                                          color: selectedIndex == index
                                              ? Colors.transparent
                                              : Colors.black),
                                    ),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Today',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black
                                                    .withOpacity(0.75))),
                                        // SizedBox(height: 8),
                                        Text('24 Jan',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black
                                                    .withOpacity(0.75),
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Time',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black.withOpacity(0.75),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: List.generate(3, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex2 = index;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(4.0),
                                    width: 80.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      color: selectedIndex2 == index
                                          ? Color(0xffC6CEDD)
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(14.0),
                                      border: Border.all(
                                          color: selectedIndex2 == index
                                              ? Colors.transparent
                                              : Colors.black),
                                    ),
                                    child: Center(
                                      child: Text('9:00 AM',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black
                                                  .withOpacity(0.75))),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => ProfileScreen());

                                print('User selected rating: $_selectedRating');
                              },
                              child: Text(
                                'Make Appointment',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff1D3D78),
                                minimumSize: Size(270, 48),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Positioned(
                      top: 120,
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          )),
                    )),
              ]),
            )

            // Expanded(
            //   child: Container(
            //     alignment: Alignment.topCenter,
            //     child: Stack(
            //       alignment: Alignment.topCenter,
            //       clipBehavior: Clip.none,
            //       children: [
            //         SizedBox(
            //           height: 20,
            //         ),
            //         // White Card Section
            // Container(
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(30),
            //       topRight: Radius.circular(30),
            //     ),
            //   ),
            //   padding: EdgeInsets.symmetric(horizontal: 12),
            //   child: Padding(
            //     padding: const EdgeInsets.all(12.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         SizedBox(height: 40), // Space for the review tag
            //         Text(
            //           'Shokat Khanam Clinic',
            //           style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         SizedBox(height: 8),
            //         Text('Dental, Skin care'),
            //         SizedBox(height: 16),
            //         Divider(
            //           color: Color(0xffF1EDED),
            //         ),
            //         Row(
            //           children: [
            //             Icon(Icons.location_on, color: Colors.grey),
            //             SizedBox(width: 8),
            //             Expanded(
            //               child: Text(
            //                 '5432 Street no. 1, Gulshan-e-Iqbal Lahore',
            //                 style: TextStyle(fontSize: 12),
            //               ),
            //             ),
            //           ],
            //         ),
            //         SizedBox(height: 8),
            //         Row(
            //           children: [
            //             Icon(Icons.access_time, color: Colors.grey),
            //             SizedBox(width: 8),
            //             Text(
            //               '15 min',
            //               style: TextStyle(fontSize: 12),
            //             ),
            //             SizedBox(width: 10),
            //             Text(
            //               '1.5km   Mon-Sun | 11am - 11pm',
            //               style: TextStyle(fontSize: 12),
            //             ),
            //           ],
            //         ),
            //         SizedBox(height: 16),
            //         Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             customRow(
            //               imge: "assets/world.png",
            //               text: "Website",
            //             ),
            //             SizedBox(
            //               width: 10,
            //             ),
            //             customRow(
            //               imge: "assets/call1.png",
            //               text: "Call",
            //             ),
            //             SizedBox(
            //               width: 10,
            //             ),
            //             customRow(
            //               imge: "assets/directions.png",
            //               text: "Direction",
            //             ),
            //             SizedBox(
            //               width: 10,
            //             ),
            //             customRow(
            //               imge: "assets/share.png",
            //               text: "Share",
            //             ),
            //           ],
            //         ),

            //         SizedBox(height: 16),
            //         Divider(
            //           color: Color(0xffF1EDED),
            //         ),
            //         SizedBox(height: 16),
            //         Text(
            //           'Book Appointment',
            //           style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         Text(
            //           'Day',
            //           style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.black.withOpacity(0.75),
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         SingleChildScrollView(
            //           scrollDirection: Axis.horizontal,
            //           child: Row(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: List.generate(4, (index) {
            //               return GestureDetector(
            //                 onTap: () {
            //                   setState(() {
            //                     selectedIndex = index;
            //                   });
            //                 },
            //                 child: Container(
            //                   margin: EdgeInsets.all(4.0),
            //                   width: 80.0,
            //                   // height: 120.0,
            //                   decoration: BoxDecoration(
            //                     color: selectedIndex == index
            //                         ? Color(0xffC6CEDD)
            //                         : Colors.white,
            //                     borderRadius:
            //                         BorderRadius.circular(14.0),
            //                     border: Border.all(
            //                         color: selectedIndex == index
            //                             ? Colors.transparent
            //                             : Colors.black),
            //                   ),
            //                   child: Column(
            //                     // mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text('Today',
            //                           style: TextStyle(
            //                               fontSize: 13,
            //                               color: Colors.black
            //                                   .withOpacity(0.75))),
            //                       // SizedBox(height: 8),
            //                       Text('24 Jan',
            //                           style: TextStyle(
            //                               fontSize: 13,
            //                               color: Colors.black
            //                                   .withOpacity(0.75),
            //                               fontWeight: FontWeight.bold)),
            //                     ],
            //                   ),
            //                 ),
            //               );
            //             }),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         Text(
            //           'Time',
            //           style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.black.withOpacity(0.75),
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         SingleChildScrollView(
            //           scrollDirection: Axis.horizontal,
            //           child: Row(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: List.generate(3, (index) {
            //               return GestureDetector(
            //                 onTap: () {
            //                   setState(() {
            //                     selectedIndex2 = index;
            //                   });
            //                 },
            //                 child: Container(
            //                   margin: EdgeInsets.all(4.0),
            //                   width: 80.0,
            //                   height: 30.0,
            //                   decoration: BoxDecoration(
            //                     color: selectedIndex2 == index
            //                         ? Color(0xffC6CEDD)
            //                         : Colors.white,
            //                     borderRadius:
            //                         BorderRadius.circular(14.0),
            //                     border: Border.all(
            //                         color: selectedIndex2 == index
            //                             ? Colors.transparent
            //                             : Colors.black),
            //                   ),
            //                   child: Center(
            //                     child: Text('9:00 AM',
            //                         style: TextStyle(
            //                             fontSize: 13,
            //                             color: Colors.black
            //                                 .withOpacity(0.75))),
            //                   ),
            //                 ),
            //               );
            //             }),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 15,
            //         ),
            //         Center(
            //           child: ElevatedButton(
            //             onPressed: () {
            //               print(
            //                   'User selected rating: $_selectedRating');
            //             },
            //             child: Text(
            //               'Make Appointment',
            //               style: TextStyle(color: Colors.white),
            //             ),
            //             style: ElevatedButton.styleFrom(
            //               backgroundColor: Color(0xff1D3D78),
            //               minimumSize: Size(270, 48),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            //         // Review Tag
            //         Positioned(
            //           left: 10,
            //           top:
            //               0, // Positioned halfway between blue and white sections
            //           // left: MediaQuery.of(context).size.width / 2 - 80,
            // child: Container(
            //   padding:
            //       EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            //   decoration: BoxDecoration(
            //     color: Color(0xff747474),
            //     borderRadius: BorderRadius.circular(16),
            //   ),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Icon(Icons.star, color: Colors.orange, size: 16),
            //       SizedBox(width: 4),
            //       Text(
            //         '4.8 (1k+ Reviews)',
            //         style:
            //             TextStyle(color: Colors.white, fontSize: 12),
            //       ),
            //     ],
            //   ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
