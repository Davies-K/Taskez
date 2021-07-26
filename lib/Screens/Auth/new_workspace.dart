import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Navigation/default_back.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

class NewWorkSpace extends StatefulWidget {
  NewWorkSpace({Key? key}) : super(key: key);

  @override
  _NewWorkSpaceState createState() => _NewWorkSpaceState();
}

class _NewWorkSpaceState extends State<NewWorkSpace> {
  final boxGradient = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          HexColor.fromHex("625B8B"),
          Color.fromRGBO(98, 99, 102, 1),
          HexColor.fromHex("#181a1f"),
          HexColor.fromHex("#181a1f")
        ]),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20), topRight: Radius.circular(20)),
    //border: Border.all(color: Colors.red, width: 5)
  );

  final innerDecor = BoxDecoration(
      color: HexColor.fromHex("181A1F"),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)));
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
                  decoration: boxGradient,
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: DecoratedBox(
                        decoration: innerDecor,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(children: [
                            ProfileDummy(
                                dummyType: ProfileDummyType.Image,
                                scale: 3.5,
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
                                child: Text('INVITE PEOPLE TO YOUR WORKSPACE',
                                    style: GoogleFonts.lato(
                                        color: HexColor.fromHex("666A7A"),
                                        fontWeight: FontWeight.bold))),
                          ]),
                        )),
                  ))),
        ]),
        // Positioned(
        //     bottom: 0,
        //     child: Container(
        //         width: Utils.screenWidth,
        //         height: 50,
        //         color: HexColor.fromHex("181A1F")))
      ]),
    );
  }
}
