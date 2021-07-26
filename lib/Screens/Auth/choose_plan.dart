import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Navigation/default_back.dart';
import 'package:taskez/widgets/Onboarding/plan_card.dart';
import 'package:taskez/widgets/Onboarding/toggle_option.dart';

class ChoosePlan extends StatelessWidget {
  ChoosePlan({Key? key}) : super(key: key);

  ValueNotifier<bool> _multiUserTrigger = ValueNotifier(false);
  ValueNotifier<bool> _customLabelTrigger = ValueNotifier(false);
  ValueNotifier<int> _planContainerTrigger = ValueNotifier(0);

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
                  padding: const EdgeInsets.all(3.0),
                  child: DecoratedBox(
                      decoration: AppStyles.fadingInnerDecor,
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text('Choose Plan',
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white)),
                              SizedBox(height: 10),
                              Text('Unlock all features with Premium Plan',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color: HexColor.fromHex("666A7A"))),
                              SizedBox(height: 40),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    PlanCard(
                                      notifierValue: _planContainerTrigger,
                                      selectedIndex: 0,
                                      header: "It's Free",
                                      subHeader: "For team\nfrom 1 - 5",
                                    ),
                                    PlanCard(
                                        notifierValue: _planContainerTrigger,
                                        selectedIndex: 1,
                                        header: "Premium",
                                        subHeader: "\$19/mo")
                                  ]),
                              SizedBox(height: 40),
                              Text('Enable Features',
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white)),
                              SizedBox(height: 10),
                              Container(
                                width: Utils.screenWidth * 0.8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text:
                                              'You can customize the features in your workspace now. Or you can do it later in ',
                                          style: GoogleFonts.lato(fontSize: 14, color: HexColor.fromHex("666A7A")),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'Menu - Workspace',
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              ToggleLabelOption(
                                  label: '    Multiple Assignees',
                                  notifierValue: _multiUserTrigger,
                                  icon: Icons.groups),
                              ToggleLabelOption(
                                  label: '    Custom Labels',
                                  notifierValue: _customLabelTrigger,
                                  icon: Icons.category)
                            ],
                          ))),
                )))
      ]),
      Positioned(
          bottom: 30,
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            width: Utils.screenWidth,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Back',
                      style: GoogleFonts.lato(
                          color: HexColor.fromHex("616575"),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Container(
                    width: 140,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                HexColor.fromHex("246CFE")),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(
                                        color: HexColor.fromHex("246CFE"))))),
                        child: Text('Done',
                            style: GoogleFonts.lato(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                  )
                ]),
          ))
    ]));
  }
}
