import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/book_appointment.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:doc_radar/widgets/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 50,
          ),
          child: SingleChildScrollView(
            child: Column(
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
                          "Doctor Details",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.share,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.favorite_border_rounded,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
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
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image(
                                image: AssetImage(
                                  "assets/profile_location.png",
                                ),
                              ),
                              Text(
                                "  HIT, Taxila",
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                image: AssetImage(
                                  "assets/Icon.png",
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 20,
                ),
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
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text.rich(
                  TextSpan(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, \n sed do eiusmod tempor incididunt ut labore et dolore \n magna aliqua ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Read More",
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: Get.width,
                  child: AuthButton(
                    title: "Book Appointment",
                    onPressed: () {
                      Get.to(
                        () => const BookAppointment(),
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
