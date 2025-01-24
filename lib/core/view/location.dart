import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../view/enter_location.dart';
import '../../widgets/auth_button.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Stack(
                children: [
                  Image(
                    image: AssetImage(
                      "assets/Ellipse.png",
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Image(
                      image: AssetImage(
                        "assets/Location.png",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "What is your location?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "We need to know your location in order \n to suggest you near by service",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              AuthButton(
                title: "Allow Location Access",
                onPressed: () {
                  Get.to(() => const EnterLocation());
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Enter your location manually",
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
