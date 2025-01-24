import 'package:doc_radar/view/enter_your_location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocateNearByDoctors extends StatelessWidget {
  const LocateNearByDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: GestureDetector(
            onTap: () {
              Get.to(
                () => const EnterYourLocation(),
              );
            },
            child: const Text(
              "Locate Your Nearby Doctors",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/maps.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
