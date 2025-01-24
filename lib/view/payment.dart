import 'package:doc_radar/view/trace_location.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:doc_radar/widgets/payment_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

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
                      Icons.arrow_back_ios,
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Payment",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage(
                          "assets/payment_done.png",
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Payment Successful!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const Divider(
                        thickness: 1.0,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Column(
                            children: [
                              PaymentDetails(
                                imageUrl: "assets/person.png",
                                title: "Eisha Waqas",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              PaymentDetails(
                                imageUrl: "assets/calander.png",
                                title: "16 Aug, 2023",
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PaymentDetails(
                                imageUrl: "assets/dollar.png",
                                title: "\$20",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              PaymentDetails(
                                imageUrl: "assets/clock.png",
                                title: "10:00AM",
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      AuthButton(
                        title: "View Appointment",
                        onPressed: () {
                          Get.to(
                            () => const TraceLocation(),
                          );
                        },
                      ),
                    ],
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
