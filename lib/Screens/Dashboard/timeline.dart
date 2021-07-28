import 'package:flutter/material.dart';
import 'package:taskez/Screens/Dashboard/dashboard.dart';
import 'package:taskez/Screens/Dashboard/notifications.dart';
import 'package:taskez/Screens/Dashboard/projects.dart';
import 'package:taskez/Screens/Dashboard/search_screen.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';

class Timeline extends StatefulWidget {
  Timeline({Key? key}) : super(key: key);

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  final List<Widget> dashBoardScreens = [
    Dashboard(),
    ProjectScreen(),
    NotificationScreen(),
    SearchScreen()
  ];
  Widget currentScreen = Dashboard();

  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor.fromHex("#181a1f"),
        body: Stack(children: [
          DarkRadialBackground(
            color: HexColor.fromHex("#181a1f"),
            position: "topLeft",
          ),
          PageStorage(child: currentScreen, bucket: bucket)
        ]),
        bottomNavigationBar: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.red)));
  }
}
