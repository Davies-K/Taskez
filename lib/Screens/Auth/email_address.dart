import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Navigation/back.dart';

class EmailAddressScreen extends StatefulWidget {
  @override
  _EmailAddressScreenState createState() => _EmailAddressScreenState();
}

class _EmailAddressScreenState extends State<EmailAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Padding(
        padding: EdgeInsets.all(20.0),
        child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          NavigationBack(),
          SizedBox(height: 40),
          Text("What's your\nemail\naddress?",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Container(
            //width: 180,
            height: 60,
            child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        HexColor.fromHex("246CFE")),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(
                                color: HexColor.fromHex("246CFE"))))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.white),
                    Text('   Continue with Email',
                        style: GoogleFonts.lato(
                            fontSize: 20, color: Colors.white)),
                  ],
                )),
          )
        ])),
      )
    ]));
  }
}
