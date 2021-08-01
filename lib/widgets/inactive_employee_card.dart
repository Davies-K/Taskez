import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

class InactiveEmployeeCard extends StatelessWidget {
  final String employeeName;
  final String employeeImage;
  final String employeePosition;
  final Color color;

  const InactiveEmployeeCard(
      {Key? key,
      required this.employeeName,
      required this.color,
      required this.employeeImage,
      required this.employeePosition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: HexColor.fromHex("262A34"),
          // border: Border.all(color: HexColor.fromHex("262A34"), width: 4),
          borderRadius: BorderRadius.circular(20)),
      child: Row(children: [
        ProfileDummy(
          dummyType: ProfileDummyType.Image,
          scale: 1.1,
          color: color,
          image: employeeImage,
        ),
        SizedBox(width: 20),
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(employeeName,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
              Text(employeePosition,
                  style: GoogleFonts.lato(color: HexColor.fromHex("5A5E6D")))
            ])
      ]),
    );
  }
}
