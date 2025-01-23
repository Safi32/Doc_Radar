import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class EnterLocation extends StatelessWidget {
  const EnterLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Enter your location",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  hintText: "Avenue",
                  suffixIcon: const Image(
                    image: AssetImage(
                      "assets/close.png",
                    ),
                  ),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.red,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Image(
                    image: AssetImage(
                      "assets/Location Tick.png",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Use my current location",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1.0,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      "SEARCH RESULT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(
                            "assets/Location Tick.png",
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Golden Avenue",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: const Row(
                      children: [
                        Text(
                          "8502 Preston Rd, Ingl...",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              AuthButton(
                title: "Confirm Location",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
