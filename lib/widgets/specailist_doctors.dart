import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpecailistDoctors extends StatelessWidget {
  const SpecailistDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.25,
      width: Get.width,
      child: Card(
        elevation: 1,
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                          color: AppColors.circleAvatar,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  image: AssetImage(
                                    "assets/done_profile.png",
                                  ),
                                ),
                                Text(
                                  "Professional Doctor",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Dr. Jane Cooper",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Dentist",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Row(
                                children: List.generate(
                                  5,
                                  (index) {
                                    if (index == 4) {
                                      return const Icon(
                                        Icons.star_half,
                                        color: Colors.amber,
                                        size: 20,
                                      );
                                    }
                                    return const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 20,
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 15,
                                width: 3,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "49 reviews",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    Get.to(
                      () => const DoctorDetails(),
                    );
                  },
                  child: const Text(
                    "Make Appointment",
                    style: TextStyle(
                      color: Colors.white,
                    ),
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
