import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/auth/create_account.dart';
import 'package:doc_radar/view/auth/sign_in.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignOption extends StatelessWidget {
  const SignOption({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "DocRadar",
                style: TextStyle(
                  color: AppColors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const Text(
                "Your Health always in range",
                style: TextStyle(
                  color: AppColors.lightBlue,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Search for your nearest doctor \n effortlessly",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: AppColors.lightGreen,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              AuthButton(
                onPressed: () {
                  Get.to(
                    () => const SignIn(),
                  );
                },
                title: "Login",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'New to the App ?',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 60),
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: AppColors.blue,
                    )),
                onPressed: () {
                  Get.to(() => const CreateAccount());
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
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
