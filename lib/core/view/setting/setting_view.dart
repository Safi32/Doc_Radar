// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../view/password_manager.dart';

class SettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_ios)),
              ),
              SizedBox(
                width: 130.w,
              ),
              Text(
                'Setting',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              )
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => SettingView()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Notification Settings',
                        style: TextStyle(
                            fontFamily: 'gilroy',
                            fontSize: 13.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: screenWidth,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PasswordManager()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.key_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Password Manager',
                        style: TextStyle(
                            fontFamily: 'gilroy',
                            fontSize: 13.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: screenWidth,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => SettingView()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Delete Account',
                        style: TextStyle(
                            fontFamily: 'gilroy',
                            fontSize: 13.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: screenWidth,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
