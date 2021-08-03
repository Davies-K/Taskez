import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Navigation/default_back.dart';
import 'package:taskez/widgets/Onboarding/gradient_color_ball.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

import 'choose_plan.dart';

class NewWorkSpace extends StatelessWidget {
  ValueNotifier<int> _colorTrigger = ValueNotifier(5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        DarkRadialBackground(
          color: HexColor.fromHex("#181a1f"),
          position: "topLeft",
        ),
        Column(children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: DefaultNav(title: "New WorkSpace"),
          ),
          SizedBox(height: 20),
          Expanded(
              flex: 1,
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: AppStyles.fadingGlory,
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: DecoratedBox(
                        decoration: AppStyles.fadingInnerDecor,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(children: [
                            ProfileDummy(
                                color: HexColor.fromHex("9F69F9"),
                                dummyType: ProfileDummyType.Image,
                                scale: 2.5,
                                image: "assets/plant.png"),
                            SizedBox(height: 10),
                            Text('Stuart\'s Workspace',
                                style: GoogleFonts.lato(
                                    fontSize: 30, color: Colors.white)),
                            SizedBox(height: 10),
                            Text('Tap the logo to upload a new image.',
                                style: GoogleFonts.lato(
                                    fontSize: 14,
                                    color: HexColor.fromHex("666A7A"))),
                            SizedBox(height: 50),
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text('HOW MANY PEOPLE IN YOUR TEAM',
                                    style: GoogleFonts.lato(
                                        color: HexColor.fromHex("666A7A"),
                                        fontWeight: FontWeight.bold))),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('11 - 25',
                                        style: GoogleFonts.lato(
                                            color: Colors.white, fontSize: 20)),
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: Icon(Icons.share,
                                          color: Colors.white, size: 30),
                                    )
                                  ]),
                            ),
                            SizedBox(height: 20),
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text('INVITE PEOPLE TO YOUR WORKSPACE',
                                    style: GoogleFonts.lato(
                                        color: HexColor.fromHex("666A7A"),
                                        fontWeight: FontWeight.bold))),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Email Address',
                                        style: GoogleFonts.lato(
                                            color: Colors.blue, fontSize: 17)),
                                    Icon(Icons.add,
                                        color: Colors.white, size: 30)
                                  ]),
                            ),
                            SizedBox(height: 20),
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text('CHOOSE COLOR THEME',
                                    style: GoogleFonts.lato(
                                        color: HexColor.fromHex("666A7A"),
                                        fontWeight: FontWeight.bold))),
                            Container(
                              child: Padding(
                                  padding: EdgeInsets.only(top: 15.0),
                                  child: Wrap(
                                      alignment: WrapAlignment.start,
                                      children: [
                                        ...List.generate(
                                          8,
                                          (index) => GradientColorBall(
                                            valueChanger: _colorTrigger,
                                            selectIndex: index,
                                            gradientList: [
                                              ...AppColors.ballColors[index]
                                            ],
                                          ),
                                        )
                                      ])),
                            ),
                            SizedBox(height: 20),
                          ]),
                        )),
                  ))),
        ]),
        Positioned(
            bottom: 30,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: Utils.screenWidth,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Skip',
                        style: GoogleFonts.lato(
                            color: HexColor.fromHex("616575"),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Container(
                      width: 140,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(ChoosePlan());
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  HexColor.fromHex("246CFE")),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                      side: BorderSide(
                                          color: HexColor.fromHex("246CFE"))))),
                          child: Text('Next',
                              style: GoogleFonts.lato(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    )
                  ]),
            ))
      ]),
    );
  }
}
