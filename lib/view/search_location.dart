import 'package:doc_radar/view/confirmation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({super.key});

  @override
  Widget build(BuildContext context) {
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
