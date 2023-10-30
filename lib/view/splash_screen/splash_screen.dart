import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_full_ui/utils/color_controller/color_controller.dart';
import 'package:netflix_full_ui/utils/image_controller/image_constant.dart';
import 'package:netflix_full_ui/view/username_screen/username_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => usernameScreen(),
        ),
      );
    });
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Center(
        child: Column(
          children: [
            Container(
              height: 736,
              width: 375,
              child: ImageConstant.myLogo,
            ),
            CircularProgressIndicator(
              color: ColorConstant.titleColor,
              strokeWidth: 5,
              semanticsLabel: "welcome",
              strokeCap: StrokeCap.butt,
              strokeAlign: 5,
            ),
          ],
        ),

        // InkWell(
        //   onTap: () => Navigator.pushAndRemoveUntil(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => usernameScreen(),
        //       ),
        //       (route) => false),
        // child:
        //     ),
      ),
    );
  }
}
