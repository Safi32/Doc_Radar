import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/auth/create_account.dart';
import 'package:doc_radar/view/auth/forgot_password.dart';
import 'package:doc_radar/widgets/Text_form_field.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:doc_radar/widgets/socail_logins.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Sign In",
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
                const CustomTextFormField(
                  hintText: "Enter your email",
                  imageUrl: "assets/Email.png",
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextFormField(
                  hintText: "Enter your password",
                  imageUrl: "assets/lock.png",
                  isPassword: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        () => const ForgotPassword(),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthButton(
                  title: "Sign In",
                  onPressed: () {
                    // Get.to(() => const CustomDashboard());
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const CreateAccount());
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "already have an account? ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: " Sign up",
                          style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "OR",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SocailLogins(
                  imageUrl: "assets/Google.png",
                  title: "Sign in with Google",
                ),
                const SizedBox(
                  height: 20,
                ),
                const SocailLogins(
                    imageUrl: "assets/Facebook.png",
                    title: "Sign in with Facebook"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
