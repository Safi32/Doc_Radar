// import 'package:doc_radar/utils/colors.dart';
// import 'package:doc_radar/widgets/auth_button.dart';
// import 'package:doc_radar/widgets/book_apointment_time.dart';
// import 'package:doc_radar/widgets/book_appointment_day.dart';
// import 'package:doc_radar/widgets/doctor_details.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class BookAppointment extends StatelessWidget {
//   const BookAppointment({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 20,
//             vertical: 50,
//           ),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: const Icon(
//                       Icons.arrow_back_ios,
//                     ),
//                   ),
//                   const Expanded(
//                     child: Center(
//                       child: Text(
//                         "Book Appointment",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 25,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               const Row(
//                 children: [
//                   Stack(
//                     children: [
//                       CircleAvatar(
//                         radius: 50,
//                         backgroundColor: AppColors.circleAvatar,
//                       ),
//                       Positioned(
//                         bottom: 5,
//                         right: 0,
//                         child: Image(
//                           image: AssetImage(
//                             "assets/done_profile.png",
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 20,
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Dr.Zaman Zaheer",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                         Text(
//                           "Dentist",
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontSize: 15,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           children: [
//                             Image(
//                               image: AssetImage(
//                                 "assets/profile_location.png",
//                               ),
//                             ),
//                             Text(
//                               "  HIT, Taxila",
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Image(
//                               image: AssetImage(
//                                 "assets/Icon.png",
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Divider(
//                 thickness: 1.0,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   DoctorDetailsWidget(
//                     imageUrl: "assets/doc_details_image1.png",
//                     title: '7,500 + \n Patients',
//                   ),
//                   DoctorDetailsWidget(
//                     imageUrl: "assets/doc_details_image2.png",
//                     title: '10 + \n Year Exp.',
//                   ),
//                   DoctorDetailsWidget(
//                     imageUrl: "assets/doc_details_image 3.png",
//                     title: '4.9+ \n Ratings',
//                   ),
//                   DoctorDetailsWidget(
//                     imageUrl: "assets/doc_details_image4.png",
//                     title: '4,956 \n Review',
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               const Row(
//                 children: [
//                   Text(
//                     "Book Appointment",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Row(
//                 children: [
//                   Text(
//                     "Day",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     BookAppointmentDay(day: "Today", date: "4 Oct"),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     BookAppointmentDay(day: "Today", date: "4 Oct"),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     BookAppointmentDay(day: "Today", date: "4 Oct"),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     BookAppointmentDay(day: "Today", date: "4 Oct"),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     BookAppointmentDay(day: "Today", date: "4 Oct"),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Row(
//                 children: [
//                   Text(
//                     "Time",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     BookApointmentTime(
//                       time: "7:00 PM",
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     BookApointmentTime(
//                       time: "7:00 PM",
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     BookApointmentTime(
//                       time: "7:00 PM",
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     BookApointmentTime(
//                       time: "7:00 PM",
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: 100,
//                 width: Get.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//               ),
//               const Spacer(),
//               SizedBox(
//                 width: Get.width,
//                 child: AuthButton(
//                   title: "Book Appointment",
//                   onPressed: () {
//                     Get.to(
//                       () => const BookAppointment(),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/confirmation.dart';
import 'package:doc_radar/view/my_bookings.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:doc_radar/widgets/book_apointment_time.dart';
import 'package:doc_radar/widgets/book_appointment_day.dart';
import 'package:doc_radar/widgets/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Book Appointment",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: AppColors.circleAvatar,
                        ),
                        Positioned(
                          bottom: 5,
                          right: 0,
                          child: Image(
                            image: AssetImage(
                              "assets/done_profile.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr.Zaman Zaheer",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Dentist",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  "assets/profile_location.png",
                                ),
                              ),
                              Text("  HIT, Taxila"),
                              SizedBox(width: 20),
                              Image(
                                image: AssetImage(
                                  "assets/Icon.png",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(thickness: 1.0),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DoctorDetailsWidget(
                      imageUrl: "assets/doc_details_image1.png",
                      title: '7,500 + \n Patients',
                    ),
                    DoctorDetailsWidget(
                      imageUrl: "assets/doc_details_image2.png",
                      title: '10 + \n Year Exp.',
                    ),
                    DoctorDetailsWidget(
                      imageUrl: "assets/doc_details_image 3.png",
                      title: '4.9+ \n Ratings',
                    ),
                    DoctorDetailsWidget(
                      imageUrl: "assets/doc_details_image4.png",
                      title: '4,956 \n Review',
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  "Book Appointment",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Day",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BookAppointmentDay(day: "Today", date: "4 Oct"),
                      SizedBox(width: 10),
                      BookAppointmentDay(day: "Today", date: "4 Oct"),
                      SizedBox(width: 10),
                      BookAppointmentDay(day: "Today", date: "4 Oct"),
                      SizedBox(width: 10),
                      BookAppointmentDay(day: "Today", date: "4 Oct"),
                      SizedBox(width: 10),
                      BookAppointmentDay(day: "Today", date: "4 Oct"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Time",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BookApointmentTime(time: "7:00 PM"),
                      SizedBox(width: 10),
                      BookApointmentTime(time: "7:00 PM"),
                      SizedBox(width: 10),
                      BookApointmentTime(time: "7:00 PM"),
                      SizedBox(width: 10),
                      BookApointmentTime(time: "7:00 PM"),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  // height: 70,
                  // width: Get.width,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2E6E6),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Want a custom schedule?",
                              style: TextStyle(
                                fontSize: 13,
                              )),
                          Text(
                            "Request Schedule",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                SizedBox(
                  width: Get.width,
                  child: AuthButton(
                    title: "Book Appointment",
                    onPressed: () {
                      Get.to(
                        () => Confirmation(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
