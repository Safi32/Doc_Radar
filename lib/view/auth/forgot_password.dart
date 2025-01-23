import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/auth/otp_screen.dart';
import 'package:doc_radar/widgets/Text_form_field.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
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
                        "Forgot Password",
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
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Please enter the ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                      text: "recovery email\n",
                      style: TextStyle(
                        color: AppColors.blue,
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                      text: "to reset your password ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextFormField(
                hintText: "Enter your email",
                imageUrl: "assets/Email.png",
              ),
              const SizedBox(
                height: 30,
              ),
              AuthButton(
                title: "Continue",
                onPressed: () {
                  Get.to(() => const OtpScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
