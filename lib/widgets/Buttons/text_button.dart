import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

class AppTextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? callback;
  const AppTextButton({Key? key, required this.buttonText, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback;
      },
      child: Text(buttonText,
          style: GoogleFonts.lato(
              color: HexColor.fromHex("616575"),
              fontSize: 16,
              fontWeight: FontWeight.bold)),
    );
  }
}
