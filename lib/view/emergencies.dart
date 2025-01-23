import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/near_by_doctors.dart';
import 'package:doc_radar/view/sign_option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Emergencies extends StatelessWidget {
  const Emergencies({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/emergencies.png",
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
                        text: "Be Prepared for\n",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      TextSpan(
                        text: "Emergencies\n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.red,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Quick access to emergency \n services when you need it \n most",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const NearByDoctors());
                    },
                    child: const Image(
                      image: AssetImage(
                        "assets/left.png",
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Image(
                        image: AssetImage(
                          "assets/pagedots.png",
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const SignOption());
                    },
                    child: const Image(
                      image: AssetImage(
                        "assets/right.png",
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
