// import 'package:doc_radar/utils/colors.dart';
// import 'package:doc_radar/view/near_by_doctors.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: AppColors.background,
//         body: Center(
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Image.asset(
//                 "assets/mobile.png",
//                 width: 300,
//                 height: 600,
//               ),
//               Positioned(
//                 top: 65,
//                 left: 30,
//                 right: 30,
//                 bottom: 80,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.asset(
//                     "assets/map.png",
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 bottom: 40,
//                 child: Image.asset(
//                   "assets/doctor.png",
//                   height: 500,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/auth/sign_in.dart';
import 'package:doc_radar/view/near_by_doctors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showDraggableBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.3, // Initial height of the sheet
          minChildSize: 0.2, // Minimum height of the sheet
          maxChildSize: 0.5, // Maximum height of the sheet
          builder: (context, scrollController) {
            return Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Seamlessly connect with \n",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: "healthcare professionals\n",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: "anytime anywhere\n",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            height: 30,
                          ),
                        ),
                        TextSpan(
                          text: "Search for your nearest doctor effortlessly",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => const NearByDoctors());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Let's Get Started",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const SignIn());
                    },
                    child: const Text(
                      "Already have an account? Sign in",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Show the draggable sheet as soon as the screen is displayed
    Future.delayed(Duration.zero, () => _showDraggableBottomSheet(context));

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
