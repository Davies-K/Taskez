import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

class InBottomSheetSubtitle extends StatelessWidget {
  final String title;
  const InBottomSheetSubtitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style:
            GoogleFonts.lato(fontSize: 12, color: HexColor.fromHex("626777")));
  }
}
