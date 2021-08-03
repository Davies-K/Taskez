import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Projects/project_badge.dart';

class ProjectDetailAppBar extends StatelessWidget {
  final String color;
  final String projectName;
  final String category;

  const ProjectDetailAppBar(
      {Key? key,
      required this.color,
      required this.projectName,
      required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ColouredProjectBadge(color: color, category: category),
              SizedBox(width: 20),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(projectName,
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 5),
                Text(category,
                    style: GoogleFonts.lato(color: HexColor.fromHex("626677"))),
              ])
            ],
          ),
          Row(children: [
            Icon(FeatherIcons.star, color: Colors.white, size: 30),
            SizedBox(width: 20),
            Icon(Icons.more_horiz, color: Colors.white, size: 30)
          ])
        ]);
  }
}
