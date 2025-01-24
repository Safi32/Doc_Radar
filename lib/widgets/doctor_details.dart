import 'package:doc_radar/utils/colors.dart';
import 'package:flutter/material.dart';

class DoctorDetailsWidget extends StatelessWidget {
  const DoctorDetailsWidget(
      {super.key, required this.imageUrl, required this.title});

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.circleAvatar,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Image(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
