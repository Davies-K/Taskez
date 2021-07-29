import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

enum PrimaryButtonSizes { small, medium, large }

class AppPrimaryButton extends StatelessWidget {
  final PrimaryButtonSizes buttonSize;
  final Color color;
  final String buttonText;
  final VoidCallback callback;
  const AppPrimaryButton(
      {Key? key,
      required this.buttonSize,
      required this.color,
      required this.callback,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonSize == PrimaryButtonSizes.large
          ? 140
          : buttonSize == PrimaryButtonSizes.medium
              ? 70
              : 30,
      height: 60,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(HexColor.fromHex("246CFE")),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: HexColor.fromHex("246CFE"))))),
          child: Text(buttonText,
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))),
    );
  }
}
