import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

enum PrimaryButtonSizes { small, medium, large }

class AppPrimaryButton extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;

  final String buttonText;
  final VoidCallback? callback;
  const AppPrimaryButton(
      {Key? key,
      this.callback,
      required this.buttonText,
      required this.buttonHeight,
      required this.buttonWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(20),
      // width: 180,
      // height: 50,
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
          onPressed: callback,
          style: ButtonStyles.blueRounded,
          child: Text(buttonText,
              style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))),
    );
  }
}
