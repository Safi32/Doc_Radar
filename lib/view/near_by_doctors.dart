import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/emergencies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NearByDoctors extends StatelessWidget {
  const NearByDoctors({key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 50,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/near-by-doctors.png",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Find Nearby\n",
                          style: TextStyle(
                            color: AppColors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: "Doctors & Book\n",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: "Instantly",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Real-time availability, \n effortless scheduling",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/left.png",
                    ),
                    Expanded(
                      child: Center(
                        child: Image.asset(
                          "assets/dots.png",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const Emergencies());
                      },
                      child: Image.asset(
                        "assets/right.png",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
