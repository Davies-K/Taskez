import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/dummy/green_done_icon.dart';

class InactiveTaskCard extends StatelessWidget {
  final String header;
  final String subHeader;
  final String date;
  const InactiveTaskCard(
      {Key? key,
      required this.header,
      required this.subHeader,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(color: HexColor.fromHex("262A34"), width: 4),
            borderRadius: BorderRadius.circular(10)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor.fromHex("262A34"),
                ),
                child: GreenDoneIcon()),
            SizedBox(width: 20),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(header,
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                  Text(subHeader,
                      style:
                          GoogleFonts.lato(color: HexColor.fromHex("5A5E6D")))
                ])
          ]),
          Text(date, style: GoogleFonts.lato(color: HexColor.fromHex("5A5E6D")))
        ]));
    ;
  }
}
