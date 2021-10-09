import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/AppLogo/app_logo.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';

import 'Onboarding/onboarding_start.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => OnboardingStart());
    });
  }

  final Shader linearGradient = LinearGradient(
    begin: FractionalOffset.topCenter,
    colors: <Color>[HexColor.fromHex("#a7b2fd"), HexColor.fromHex("#c1a0fd")],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 30.0, 40.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        DarkRadialBackground(
          color: HexColor.fromHex("#181a1f"),
          position: "topLeft",
        ),
        Positioned(left: 140, child: AppLogo()),
        Center(
            child: Container(
          child: RichText(
            text: TextSpan(
              text: 'Task',
              style: GoogleFonts.lato(fontSize: 40),
              children: <TextSpan>[
                TextSpan(
                    text: 'ez',
                    style: TextStyle(foreground: Paint()..shader = linearGradient, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ))
        // DarkRadialBackground(
        //   color: Colors.transparent,
        //   position: "bottomRight",
        // ),
      ]),
    );
  }
}
