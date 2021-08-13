import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

class ContainerLabel extends StatelessWidget {
  final String label;
  const ContainerLabel({
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: Text(label,
            style: GoogleFonts.lato(
                fontSize: 12,
                color: HexColor.fromHex("666A7A"),
                fontWeight: FontWeight.bold)));
  }
}
