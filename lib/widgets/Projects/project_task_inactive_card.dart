import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/dummy/green_done_icon.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

class ProjectTaskInActiveCard extends StatelessWidget {
  final String header;
  final String backgroundColor;
  final ValueNotifier<bool> notifier;
  final String image;
  final String date;
  const ProjectTaskInActiveCard(
      {Key? key,
      required this.header,
      required this.notifier,
      required this.backgroundColor,
      required this.image,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        notifier.value = !notifier.value;
      },
      child: Container(
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryBackgroundColor, width: 4),
              borderRadius: BorderRadius.circular(10)),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryBackgroundColor,
                  ),
                  child: GreenDoneIcon()),
              AppSpaces.horizontalSpace20,
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(header,
                        style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)),
                    Text(date, style: GoogleFonts.lato(color: HexColor.fromHex("8ECA84")))
                  ])
            ]),
            ProfileDummy(
                color: HexColor.fromHex(backgroundColor),
                dummyType: ProfileDummyType.Image,
                image: this.image,
                scale: 1.0),
          ])),
    );
  }
}
