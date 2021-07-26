import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

class PlanCard extends StatelessWidget {
  int selectedIndex;
  ValueNotifier<int> notifierValue;

  final String header;
  final String subHeader;
  PlanCard(
      {Key? key,
      required this.selectedIndex,
      required this.notifierValue,
      required this.header,
      required this.subHeader})
      : super(key: key);

  List<Color> list = [
    //grenn
    HexColor.fromHex("87EFB5"),
    //blue
    HexColor.fromHex("8ABFFC"),
    //pink
    HexColor.fromHex("EEB2E8"),
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          notifierValue.value = selectedIndex;
          print(notifierValue.value);
        },
        child: ValueListenableBuilder(
            valueListenable: notifierValue,
            builder: (BuildContext context, _, __) {
              return Container(
                  width: 180,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: RadialGradient(
                      colors: [
                        ...list,
                      ],
                      center: Alignment(1, 1),
                      focal: Alignment(0.3, -0.1),
                      focalRadius: 1.0,
                    ),
                  ),
                  child: notifierValue.value != selectedIndex
                      ? Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: DecoratedBox(
                              decoration: AppStyles.fadingInnerDecor,
                              child: Center(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    SizedBox(height: 40),
                                    Text(header,
                                        style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                    SizedBox(height: 10),
                                    Text(subHeader,
                                        style: GoogleFonts.lato(
                                            color: HexColor.fromHex("F7A3F9")))
                                  ]))),
                        )
                      : Stack(children: [
                          Positioned(
                            top: 5,
                            left: 5,
                            child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: HexColor.fromHex("181a1f")),
                                child: Center(
                                  child: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: HexColor.fromHex("78B462")),
                                      child: Icon(Icons.done,
                                          color: Colors.white)),
                                )),
                          ),
                          Center(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                SizedBox(height: 45),
                                Text("🎉", style: TextStyle(fontSize: 40)),
                                SizedBox(height: 20),
                                Text(header,
                                    style: GoogleFonts.lato(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24)),
                                SizedBox(height: 10),
                                Text(subHeader, style: GoogleFonts.lato())
                              ]))
                        ]));
            }));
  }
}
