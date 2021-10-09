import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Screens/Projects/project_detail.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Projects/project_badge.dart';

class ProjectCardHorizontal extends StatelessWidget {
  final String projectName;
  final String category;
  final int ratingsUpperNumber;
  final int ratingsLowerNumber;
  final String color;

  const ProjectCardHorizontal(
      {Key? key,
      required this.projectName,
      required this.category,
      required this.ratingsUpperNumber,
      required this.ratingsLowerNumber,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ProjectDetails(
              category: category,
              projectName: projectName,
              color: color,
            ));
      },
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: HexColor.fromHex("20222A"), borderRadius: BorderRadius.circular(20)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    ColouredProjectBadge(color: color, category: category),
                    AppSpaces.horizontalSpace20,
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text(projectName,
                          style: GoogleFonts.lato(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                      SizedBox(height: 5),
                      Text(category, style: GoogleFonts.lato(color: HexColor.fromHex("626677"))),
                    ])
                  ]),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration:
                          BoxDecoration(color: HexColor.fromHex(color), borderRadius: BorderRadius.circular(20)),
                      child: Text("$ratingsUpperNumber/$ratingsLowerNumber",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              color: (category == "Development" ? Colors.black : Colors.white))))
                ]),
            AppSpaces.verticalSpace20,
            Expanded(
              child: Container(
                  width: double.infinity,
                  height: 5,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: HexColor.fromHex("343840")),
                  child: Row(children: [
                    Expanded(
                        flex: ratingsUpperNumber,
                        child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [darken(HexColor.fromHex(color)), HexColor.fromHex(color)])))),
                    Expanded(flex: ratingsLowerNumber, child: SizedBox())
                  ])),
            )
          ])),
    );
  }
}
