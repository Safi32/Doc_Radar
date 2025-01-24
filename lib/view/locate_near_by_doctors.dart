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
import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/enter_your_location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocateNearByDoctors extends StatelessWidget {
  const LocateNearByDoctors({super.key});

  // Function to show the draggable bottom sheet
  void _showDraggableBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return const AddressConfirmationSheet();
      },
    );
  }

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
            ElevatedButton(
              onPressed: () => _showDraggableBottomSheet(context),
              child: const Text("Confirm Location"),
            ),
          ],
        ),
      ),
    );
  }
}

class AddressConfirmationSheet extends StatelessWidget {
  const AddressConfirmationSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Text(
                "Confirm your address",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Divider(
            thickness: 1.0,
          ),
          Row(
            children: [
              Image(
                image: AssetImage(
                  "assets/Location.png",
                ),
                height: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Flat No, 50, Mahalaxmi Shop \n Upkaar, 36, Barpokhar(E), \n Siwan, lahore, Pincode-880212",
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: AppColors.blue),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Confirm Location",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.lightBlue),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Change Location",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
