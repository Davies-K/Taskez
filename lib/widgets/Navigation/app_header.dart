import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'back_button.dart';

class taskezAppHeader extends StatelessWidget {
  final String title;
  final Widget? widget;
  const taskezAppHeader({Key? key, this.widget, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      AppBackButton(),
      Text(this.title,
          style: GoogleFonts.lato(fontSize: 20, color: Colors.white)),
      widget!
    ]);
  }
}
