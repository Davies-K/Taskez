import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

import 'back_button.dart';

class DefaultNav extends StatelessWidget {
  final String title;
  final ProfileDummyType? type;
  const DefaultNav({Key? key, this.type, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      AppBackButton(),
      Text(this.title,
          style: GoogleFonts.lato(fontSize: 20, color: Colors.white)),
      (type == ProfileDummyType.Image)
          ? ProfileDummy(
              color: HexColor.fromHex("93F0F0"),
              dummyType: ProfileDummyType.Image,
              image: "assets/man-head.png",
              scale: 1.2)
          : ProfileDummy(
              color: HexColor.fromHex("9F69F9"),
              dummyType: ProfileDummyType.Icon,
              scale: 1.0)
    ]);
  }
}
