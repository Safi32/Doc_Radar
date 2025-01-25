// import 'package:doc_radar/utils/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class MyBookingWidget extends StatefulWidget {
//   final bool showReminder;

//   const MyBookingWidget({super.key, this.showReminder = true});

//   @override
//   State<MyBookingWidget> createState() => _MyBookingWidgetState();
// }

// class _MyBookingWidgetState extends State<MyBookingWidget> {
//   bool _isReminderEnabled = false;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 10,
//       ),
//       child: SizedBox(
//         height: Get.height * 0.35,
//         width: Get.width,
//         child: Card(
//           elevation: 1,
//           color: Colors.white,
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text(
//                       "Aug 25, 2024 - 10:00 AM",
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     if (widget
//                         .showReminder) // Conditionally show the reminder row
//                       Row(
//                         children: [
//                           const Text(
//                             "Remind me",
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.grey,
//                             ),
//                           ),
//                           Switch(
//                             value: _isReminderEnabled,
//                             onChanged: (bool value) {
//                               setState(() {
//                                 _isReminderEnabled = value;
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       height: 100,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         color: AppColors.circleAvatar,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Dr.Jane Cooper",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Row(
//                           children: [
//                             Image(
//                               image: AssetImage(
//                                 "assets/booking_location.png",
//                               ),
//                             ),
//                             Text(
//                               "5432 Street no 1, Gulshan-e-Iqbal Lahore",
//                               style: TextStyle(
//                                 color: Colors.grey,
//                                 fontSize: 10,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Row(
//                           children: [
//                             Image(
//                               image: AssetImage(
//                                 "assets/booking_clock.png",
//                               ),
//                             ),
//                             Text(
//                               "Booking ID : #DRW5910",
//                               style: TextStyle(
//                                 color: Colors.grey,
//                                 fontSize: 10,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Divider(
//                   thickness: 1,
//                   color: Colors.grey.shade300,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     SizedBox(
//                       height: Get.height * 0.06,
//                       width: Get.width * 0.4,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(
//                                 10,
//                               ),
//                             ),
//                             backgroundColor: AppColors.blue),
//                         onPressed: () {},
//                         child: const Text(
//                           "Cancel",
//                           style: TextStyle(
//                             fontSize: 15,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: Get.height * 0.06,
//                       width: Get.width * 0.4,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(
//                                 10,
//                               ),
//                             ),
//                             backgroundColor: AppColors.blue),
//                         onPressed: () {},
//                         child: const Text(
//                           "Reschedule",
//                           style: TextStyle(
//                             fontSize: 15,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:doc_radar/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBookingWidget extends StatefulWidget {
  final bool showReminder;
  final String title; // For the "Cancel" button
  final String subtitle; // For the "Reschedule" button

  const MyBookingWidget({
    this.showReminder = true,
    required this.title,
    required this.subtitle,
  });

  @override
  State<MyBookingWidget> createState() => _MyBookingWidgetState();
}

class _MyBookingWidgetState extends State<MyBookingWidget> {
  bool _isReminderEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: Get.height * 0.35,
        width: Get.width,
        child: Card(
          elevation: 1,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Aug 25, 2024 - 10:00 AM",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (widget
                        .showReminder) // Conditionally show the reminder row
                      Row(
                        children: [
                          const Text(
                            "Remind me",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          Switch(
                            value: _isReminderEnabled,
                            onChanged: (bool value) {
                              setState(() {
                                _isReminderEnabled = value;
                              });
                            },
                          ),
                        ],
                      ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                        color: AppColors.circleAvatar,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr.Jane Cooper",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Image(
                              image: AssetImage("assets/booking_location.png"),
                            ),
                            Text(
                              "5432 Street no 1, Gulshan-e-Iqbal Lahore",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Image(
                              image: AssetImage("assets/booking_clock.png"),
                            ),
                            Text(
                              "Booking ID : #DRW5910",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: Get.height * 0.06,
                      width: Get.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: AppColors.blue,
                        ),
                        onPressed: () {},
                        child: Text(
                          widget.title, // Use dynamic title here
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.06,
                      width: Get.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: AppColors.blue,
                        ),
                        onPressed: () {},
                        child: Text(
                          widget.subtitle, // Use dynamic subtitle here
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
