import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../view/auth/create_account.dart';
import '../../../view/auth/forgot_password.dart';
import '../../../widgets/Text_form_field.dart';
import '../../../widgets/auth_button.dart';
import '../../../widgets/socail_logins.dart';
import '../dashbord/dashboard.dart';

class SignIn extends StatelessWidget {
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
                      child: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                      ),
                    ),
                    const Expanded(
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
                    Get.to(() => CustomDashboard());
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => CreateAccount());
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
