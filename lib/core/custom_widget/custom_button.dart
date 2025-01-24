import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final double? width;
  final double? height;
  BoxDecoration? decoration;
  TextStyle? textStyle;

  CustomButton(
      {key,
      this.decoration,
      this.height,
      this.textStyle,
      this.title,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: decoration,
        child: Text(
          '$title',
          style: textStyle,
        ));
  }
}
