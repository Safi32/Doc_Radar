import 'package:flutter/material.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails(
      {super.key, required this.imageUrl, required this.title});

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(
            imageUrl,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
