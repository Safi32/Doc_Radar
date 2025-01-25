// import 'package:doc_radar/view/enter_your_location.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class LocateNearByDoctors extends StatelessWidget {
//   const LocateNearByDoctors({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//           leading: GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: const Icon(
//               Icons.arrow_back_ios,
//               color: Colors.black,
//             ),
//           ),
//           title: GestureDetector(
//             onTap: () {
//               Get.to(
//                 () => const EnterYourLocation(),
//               );
//             },
//             child: const Text(
//               "Locate Your Nearby Doctors",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25,
//               ),
//             ),
//           ),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child: SizedBox(
//                 width: MediaQuery.of(context).size.width,
//                 child: Image.asset(
//                   "assets/maps.png",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/util.dart';

// Placeholder for your colors
// class AppColors {
//   static  Color primaryColor = Color(0xFF284484); // Example blue
//   static  Color lightGrey = Color(0xFFEEEEEE);
// }

class LocateNearByDoctors extends StatelessWidget {
  void _showPreferencesBottomSheet(BuildContext context) {
    Get.bottomSheet(
      PreferencesBottomSheet(),
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Select your Preferences",
            style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          // Just a button to trigger the bottom sheet for demo
          onPressed: () => _showPreferencesBottomSheet(context),
          child: const Text("Show Preferences"),
        ),
      ),
    );
  }
}

class PreferencesBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(), // Important!
            itemCount: 3,
            itemBuilder: (context, index) {
              return PreferenceItem();
            },
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PreferenceItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Glamour Haven",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      children: const [
                        Text("5.0"),
                        Icon(Icons.star, color: Colors.amber, size: 16),
                      ],
                    ),
                  ],
                ),
                const Text("Dentist"),
                const Text("Consultation fees: 1000 PKR"),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.directions_walk),
              Text("3.5 km/50min"),
            ],
          ),
        ],
      ),
    );
  }
}
