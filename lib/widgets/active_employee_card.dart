import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/dummy/green_done_icon.dart';

import 'dummy/profile_dummy.dart';

class ActiveEmployeeCard extends StatelessWidget {
  final String employeeName;
  final String employeeImage;
  final Color color;
  final String employeePosition;

  const ActiveEmployeeCard(
      {Key? key,
      required this.employeeName,
      required this.employeeImage,
      required this.employeePosition,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink, HexColor.fromHex("C395FC")],
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: HexColor.fromHex("181A1F")),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    ProfileDummy(
                      dummyType: ProfileDummyType.Image,
                      scale: 1.1,
                      color: color,
                      image: employeeImage,
                    ),
                    SizedBox(width: 20),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(employeeName,
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18)),
                          SizedBox(height: 5),
                          Text(employeePosition,
                              style: GoogleFonts.lato(
                                  color: HexColor.fromHex("5A5E6D")))
                        ])
                  ]),
                  Align(alignment: Alignment.topCenter, child: GreenDoneIcon())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
