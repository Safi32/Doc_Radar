import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/widgets/specailist_doctors.dart';
import 'package:flutter/material.dart';

class TopSpecailist extends StatelessWidget {
  TopSpecailist({super.key});

  final ValueNotifier<String> selectedCategory = ValueNotifier<String>("All");

  final List<String> doctorTypes = ["All", "Dentist", "General", "Cardiology"];

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
                      Icons.arrow_back_ios,
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Top Specialists",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ValueListenableBuilder<String>(
                  valueListenable: selectedCategory,
                  builder: (context, currentCategory, _) {
                    return Row(
                      children: doctorTypes.map((type) {
                        final bool isSelected = type == currentCategory;

                        return GestureDetector(
                          onTap: () {
                            selectedCategory.value = type;
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 15),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.blue
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)),
                            child: Text(
                              type,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SpecailistDoctors(),
                      SpecailistDoctors(),
                      SpecailistDoctors(),
                      SpecailistDoctors(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
