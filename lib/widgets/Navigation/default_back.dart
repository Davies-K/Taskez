import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

import 'back_button.dart';

class DefaultNav extends StatelessWidget {
  final String title;
  const DefaultNav({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      AppBackButton(),
      Text(this.title,
          style: GoogleFonts.lato(fontSize: 20, color: Colors.white)),
      ProfileDummy(dummyType: ProfileDummyType.Icon, scale: 1.0)
    ]);
  }
}
