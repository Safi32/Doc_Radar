import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/near_by_doctors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const NearByDoctors()),
      );
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/mobile.png",
                width: 300,
                height: 600,
              ),
              Positioned(
                top: 65,
                left: 30,
                right: 30,
                bottom: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/map.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                child: Image.asset(
                  "assets/doctor.png",
                  height: 500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
