import 'package:doc_radar/view/confirmation.dart';
import 'package:doc_radar/widgets/doctor_detail_dragsheet.dart';
import 'package:doc_radar/widgets/doctor_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({super.key});

  void _showDraggableBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return const PreferencesBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => _showDraggableBottomSheet(context));

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 100,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: GestureDetector(
                    onTap: () {
                      Get.to(() => const Confirmation());
                    },
                    child: const Icon(
                      Icons.search,
                    ),
                  ),
                  hintText: "Avenue",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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

class PreferencesBottomSheet extends StatelessWidget {
  const PreferencesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios, size: 30)),
              const SizedBox(width: 10),
              const Text(
                "Share your preferences",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          DoctorPopUp(
            onPressed: () {
              Get.to(() => const DoctorDetailDragsheet());
            },
          ),
          DoctorPopUp(
            onPressed: () {},
          ),
          DoctorPopUp(
            onPressed: () {},
          ),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 30,
          ),
        ],
      ),
    );
  }
}
