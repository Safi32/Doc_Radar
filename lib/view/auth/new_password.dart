import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/location.dart';
import 'package:doc_radar/widgets/Text_form_field.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                        "New Password",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Your new Password must be different from \n previously used passwords",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomTextFormField(
                hintText: "New Password",
                imageUrl: "assets/lock.png",
                isPassword: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextFormField(
                hintText: "Confirm new password",
                imageUrl: "assets/lock.png",
                isPassword: true,
              ),
              const SizedBox(
                height: 40,
              ),
              AuthButton(
                title: "Create new password",
                onPressed: () {
                  // Show the dialog when the button is pressed
                  _showDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to show the dialog
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          contentPadding: const EdgeInsets.all(20),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Container for image
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset("assets/done.png"), // Corrected image path
              ),
              const SizedBox(
                height: 20,
              ),
              // Text to display in the dialog
              const Text(
                "Password\n Changed",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "DocRadar \n Your trusted companion",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AuthButton(
                title: "proceed",
                onPressed: () {
                  Get.to(() => const Location());
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
