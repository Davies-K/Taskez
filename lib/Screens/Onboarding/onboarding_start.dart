import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Onboarding/loading_stickers.dart';
import 'dart:math' as math;

class OnboardingStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Positioned(
          top: Utils.screenHeight * 0.2,
          left: Utils.screenWidth * 0.45,
          child: LoadingSticker(gradients: [
            HexColor.fromHex("#F3EEAE"),
            HexColor.fromHex("F3EFAB"),
            HexColor.fromHex("#4A88FE")
          ])),
      Positioned(
          top: Utils.screenHeight * 0.60,
          left: Utils.screenWidth * 0.25,
          child: LoadingSticker(gradients: [
            HexColor.fromHex("#a7b2fd"),
            HexColor.fromHex("#c1a0fd")
          ])),
      Positioned(
          top: Utils.screenHeight * 0.8,
          left: Utils.screenWidth * 0.6,
          child: LoadingSticker(gradients: [
            HexColor.fromHex("#a7b2fd"),
            HexColor.fromHex("#c1a0fd")
          ])),
      Positioned(
          top: Utils.screenHeight * 1.3,
          left: Utils.screenWidth * 0.83,
          child: Transform.rotate(
            angle: -math.pi / 4,
            child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: HexColor.fromHex("B6FFE5")),
                child: Transform.rotate(
                  angle: math.pi / 4,
                  child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 80, left: 30),
                      child: Icon(Icons.arrow_forward, size: 40)),
                )),
          ))
    ]);
  }
}
