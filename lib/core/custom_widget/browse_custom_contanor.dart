// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BrowseCustomContanor extends StatelessWidget {
  String? title;
  BoxDecoration? decoration;
  BrowseCustomContanor({key, this.decoration, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 71.w,
      height: 65,
      decoration: decoration,
      child: Text(
        "$title",
        style: GoogleFonts.inter(
            textStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
      ),
    );
  }
}
