// import 'package:doc_radar/utils/colors.dart';
// import 'package:doc_radar/view/auth/sign_in.dart';
// import 'package:doc_radar/widgets/Text_form_field.dart';
// import 'package:doc_radar/widgets/auth_button.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CreateAccount extends StatefulWidget {
//   const CreateAccount({super.key});

//   @override
//   _CreateAccountState createState() => _CreateAccountState();
// }

// class _CreateAccountState extends State<CreateAccount> {
//   bool _isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 20,
//             vertical: 50,
//           ),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: const Icon(
//                       Icons.arrow_back_ios_new_sharp,
//                     ),
//                   ),
//                   const Expanded(
//                     child: Center(
//                       child: Text(
//                         "Create Account",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 30,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Wrap(
//                       runSpacing: 30.0,
//                       children: [
//                         CustomTextFormField(
//                           hintText: "Enter your name",
//                           imageUrl: "assets/account.png",
//                         ),
//                         CustomTextFormField(
//                           hintText: "Enter your phone number",
//                           imageUrl: "assets/Call.png",
//                         ),
//                         CustomTextFormField(
//                           hintText: "Enter your email",
//                           imageUrl: "assets/Email.png",
//                         ),
//                         CustomTextFormField(
//                           hintText: "Enter your password",
//                           imageUrl: "assets/lock.png",
//                           isPassword: true,
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Checkbox(
//                           value: _isChecked,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               _isChecked = value!;
//                             });
//                           },
//                         ),
//                         Text.rich(
//                           TextSpan(
//                             children: [
//                               const TextSpan(
//                                 text: "I agree to the healthcare ",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: "Terms of Service",
//                                 style: const TextStyle(
//                                   color: Colors.blue,
//                                 ),
//                                 recognizer: TapGestureRecognizer()
//                                   ..onTap = () {},
//                               ),
//                               const TextSpan(
//                                 text: " and \n",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               TextSpan(
//                                 text: "Privacy Policy",
//                                 style: const TextStyle(
//                                   color: Colors.blue,
//                                 ),
//                                 recognizer: TapGestureRecognizer()
//                                   ..onTap = () {},
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     AuthButton(
//                       title: "Sign Up",
//                       onPressed: () {},
//                     ),
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Get.to(() => const SignIn());
//                       },
//                       child: RichText(
//                         text: const TextSpan(
//                           children: [
//                             TextSpan(
//                               text: "already have an account? ",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 15,
//                               ),
//                             ),
//                             TextSpan(
//                               text: " Sign In",
//                               style: TextStyle(
//                                 color: AppColors.blue,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15,
//                                 decoration: TextDecoration.underline,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
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
import 'package:doc_radar/widgets/Text_form_field.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                            "Create Account",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Wrap(
                        runSpacing: 30.0,
                        children: [
                          CustomTextFormField(
                            hintText: "Enter your name",
                            imageUrl: "assets/account.png",
                          ),
                          CustomTextFormField(
                            hintText: "Enter your phone number",
                            imageUrl: "assets/Call.png",
                          ),
                          CustomTextFormField(
                            hintText: "Enter your email",
                            imageUrl: "assets/Email.png",
                          ),
                          CustomTextFormField(
                            hintText: "Enter your password",
                            imageUrl: "assets/lock.png",
                            isPassword: true,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(
                                  text: "I agree to the healthcare ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: "Terms of Service",
                                  style: const TextStyle(
                                    color: Colors.blue,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                ),
                                const TextSpan(
                                  text: " and \n",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: "Privacy Policy",
                                  style: const TextStyle(
                                    color: Colors.blue,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      AuthButton(
                        title: "Sign Up",
                        onPressed: () {},
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const SignIn());
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
                                text: " Sign In",
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
