import 'package:doc_radar/view/top_specailist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {"image": "assets/dentist.png", "name": "Dentist"},
      {"image": "assets/cardiology.png", "name": "Cardiology"},
      {"image": "assets/orthopae.png", "name": "Orthopae.."},
      {"image": "assets/neuorology.png", "name": "Neurolo.."},
      {"image": "assets/otology.png", "name": "Otology"},
      {"image": "assets/gateron.png", "name": "Gastroen.."},
      {"image": "assets/rahnilogy.png", "name": "Rhinolog.."},
      {"image": "assets/uthology.png", "name": "Utologis.."},
      {"image": "assets/otology.png", "name": "Pulmonol.."},
      {"image": "assets/gateron.png", "name": "Hepatolo.."},
      {"image": "assets/rahnilogy.png", "name": "Gynecolo.."},
      {"image": "assets/uthology.png", "name": "Osteolog.."},
      {"image": "assets/otology.png", "name": "Otology"},
      {"image": "assets/gateron.png", "name": "Plastic S.."},
      {"image": "assets/rahnilogy.png", "name": "Radiolog.."},
      {"image": "assets/uthology.png", "name": "Intestine"},
      {"image": "assets/otology.png", "name": "Pediatric"},
      {"image": "assets/gateron.png", "name": "Naturopa.."},
      {"image": "assets/rahnilogy.png", "name": "Herbal"},
      {"image": "assets/uthology.png", "name": "General"},
    ];

    // Get screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Determine the number of columns to maintain 4 columns
    int crossAxisCount = 4;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, // 5% horizontal padding
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
                    Expanded(
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => TopSpecailist());
                          },
                          child: Text(
                            "Category",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  screenWidth * 0.07, // Responsive font size
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.8, // Adjust height for GridView
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio:
                          0.8, // Adjust for better text visibility
                    ),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(() => TopSpecailist());
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: screenWidth * 0.2, // 20% of screen width
                              height: screenWidth * 0.2, // 20% of screen width
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage(categories[index]["image"]!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: screenWidth *
                                  0.25, // Adjust width for text wrapping
                              child: Text(
                                categories[index]["name"]!,
                                textAlign: TextAlign.center,
                                maxLines: 2, // Limit to two lines
                                overflow: TextOverflow
                                    .ellipsis, // Add ellipsis for longer text
                                style: TextStyle(
                                  fontSize: screenWidth *
                                      0.02, // Responsive font size
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
