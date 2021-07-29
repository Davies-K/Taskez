import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/widgets/Navigation/dasboard_header.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

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
          SizedBox(height: 40),
        ]));
  }
}
