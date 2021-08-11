import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Screens/Task/task_due_date.dart';
import 'package:taskez/Values/values.dart';

class SheetGoToCalendarWidget extends StatelessWidget {
  final String label;
  final String value;
  final Color cardBackgroundColor;
  final Color textAccentColor;
  const SheetGoToCalendarWidget({
    Key? key,
    required this.label,
    required this.value,
    required this.cardBackgroundColor,
    required this.textAccentColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => TaskDueDate());
      },
      child: Container(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CircularCalendarCard(color: cardBackgroundColor),
          AppSpaces.horizontalSpace10,
          CircularCardLabel(
            label: label,
            value: value,
            color: textAccentColor,
          )
        ]),
      ),
    );
  }
}

class CircularCalendarCard extends StatelessWidget {
  final Color color;
  const CircularCalendarCard({
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40 * 1.5,
        height: 40 * 1.5,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: Icon(Icons.calendar_today, color: Colors.white));
  }
}

class CircularCardLabel extends StatelessWidget {
  final String? label;
  final String? value;
  final Color? color;
  const CircularCardLabel({
    Key? key,
    this.label,
    this.color,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSpaces.verticalSpace10,
          Text(label!,
              style: GoogleFonts.lato(
                  fontSize: 16, color: HexColor.fromHex("626777"))),
          Text(value!, style: GoogleFonts.lato(fontSize: 16, color: color))
        ]);
  }
}
