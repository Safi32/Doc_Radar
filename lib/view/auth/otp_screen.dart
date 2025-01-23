import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/auth/new_password.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _firstDigitController = TextEditingController();
  final TextEditingController _secondDigitController = TextEditingController();
  final TextEditingController _thirdDigitController = TextEditingController();
  final TextEditingController _fourthDigitController = TextEditingController();

  final FocusNode _firstDigitFocus = FocusNode();
  final FocusNode _secondDigitFocus = FocusNode();
  final FocusNode _thirdDigitFocus = FocusNode();
  final FocusNode _fourthDigitFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Enter Verification Code",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Please enter the verification code\nsent to ",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: "@gmail.com",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.lightBlue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildOtpBox(_firstDigitController, _firstDigitFocus,
                            _secondDigitFocus),
                        const SizedBox(width: 10),
                        _buildOtpBox(_secondDigitController, _secondDigitFocus,
                            _thirdDigitFocus),
                        const SizedBox(width: 10),
                        _buildOtpBox(_thirdDigitController, _thirdDigitFocus,
                            _fourthDigitFocus),
                        const SizedBox(width: 10),
                        _buildOtpBox(
                            _fourthDigitController, _fourthDigitFocus, null),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Didn't receive OTP? ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: " resend code",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    AuthButton(
                      title: "Continue",
                      onPressed: () {
                        Get.to(() => const NewPassword());
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOtpBox(
    TextEditingController controller,
    FocusNode currentFocus,
    FocusNode? nextFocus,
  ) {
    return SizedBox(
      width: 60,
      height: 80,
      child: TextField(
        controller: controller,
        focusNode: currentFocus,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade200,
          filled: true,
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && nextFocus != null) {
            FocusScope.of(context).requestFocus(nextFocus); // Move to next box
          }
        },
      ),
    );
  }
}
