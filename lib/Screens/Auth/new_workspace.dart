import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Buttons/primary_progress_button.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Navigation/default_back.dart';
import 'package:taskez/widgets/Onboarding/gradient_color_ball.dart';
import 'package:taskez/widgets/container_label.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

import 'choose_plan.dart';

class NewWorkSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _colorTrigger = ValueNotifier(5);
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
          AppSpaces.verticalSpace20,
          Expanded(
              flex: 1,
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecorationStyles.fadingGlory,
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: DecoratedBox(
                        decoration: BoxDecorationStyles.fadingInnerDecor,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(children: [
                            ProfileDummy(
                                color: HexColor.fromHex("9F69F9"),
                                dummyType: ProfileDummyType.Image,
                                scale: 2.5,
                                image: "assets/plant.png"),
                            AppSpaces.verticalSpace10,
                            Text('Stuart\'s Workspace',
                                style: GoogleFonts.lato(
                                    fontSize: 30, color: Colors.white)),
                            AppSpaces.verticalSpace10,
                            Text('Tap the logo to upload a new image.',
                                style: GoogleFonts.lato(
                                    fontSize: 14,
                                    color: HexColor.fromHex("666A7A"))),
                            SizedBox(height: 50),
                            ContainerLabel(
                                label: 'HOW MANY PEOPLE IN YOUR TEAM'),
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
                            AppSpaces.verticalSpace20,
                            ContainerLabel(
                                label: 'INVITE PEOPLE TO YOUR WORKSPACE'),
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
                            AppSpaces.verticalSpace20,
                            ContainerLabel(label: 'CHOOSE COLOR THEME'),
                            Container(
                              child: Padding(
                                  padding: EdgeInsets.only(top: 15.0),
                                  child: Wrap(
                                      alignment: WrapAlignment.start,
                                      children: [
                                        ...List.generate(
                                          AppColors.ballColors.length,
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
                            AppSpaces.verticalSpace20,
                          ]),
                        )),
                  ))),
        ]),
        Positioned(
            bottom: 50,
            child: Container(
              padding: EdgeInsets.only(left: 40, right: 20),
              width: Utils.screenWidth,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Skip',
                        style: GoogleFonts.lato(
                            color: HexColor.fromHex("616575"),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    PrimaryProgressButton(
                      width: 120,
                      label: "Next",
                      callback: () {
                        Get.to(() => ChoosePlan());
                      },
                    )
                  ]),
            ))
      ]),
    );
  }
}
