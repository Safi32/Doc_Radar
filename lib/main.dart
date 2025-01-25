import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/view/clinic_specialists.dart';
import 'core/view/get_direction.dart';
import 'view/confirmation_alert.dart';
import 'view/locate_near_by_doctors.dart';
import 'view/notification_screen.dart';
import 'view/payment_screen.dart';
import 'view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 19, 91, 149)),
            useMaterial3: true,
          ),
          home: child,
        );
      },
      child: SplashScreen(),

      //  CustomDashboard(),
    );
  }
}
