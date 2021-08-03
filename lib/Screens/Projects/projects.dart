import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Chat/add_chat_icon.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Navigation/app_header.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Padding(
          padding: const EdgeInsets.only(top: 60.0, right: 20, left: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            taskezAppHeader(
              title: "Chat",
              widget: AppAddIcon(),
            ),
            SizedBox(height: 20),
          ]))
    ]));
  }
}
