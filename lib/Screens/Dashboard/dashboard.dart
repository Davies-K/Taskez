import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/widgets/Buttons/primary_tab_buttons.dart';
import 'package:taskez/widgets/Navigation/dasboard_header.dart';
import 'package:taskez/widgets/Shapes/app_settings_icon.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  ValueNotifier<int> _buttonTrigger = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(children: [
          DashboardNav(
              icon: FontAwesomeIcons.comment,
              image: "assets/man-head.png",
              notificationCount: "2",
              title: "Dashboard"),
          SizedBox(height: 40),
          Text("Hello,\nDereck Doyle 👋",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //tab indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PrimaryTabButton(
                    buttonText: "Overview",
                    itemIndex: 0,
                    notifier: _buttonTrigger),
                PrimaryTabButton(
                    buttonText: "Productivity",
                    itemIndex: 1,
                    notifier: _buttonTrigger)
              ],
            ),
            Container(
                alignment: Alignment.centerRight, child: AppSettingsIcon())
          ])
        ]));
  }
}
