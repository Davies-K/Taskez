import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

class ProjectTaskActiveCard extends StatelessWidget {
  final String header;
  final String backgroundColor;
  final ValueNotifier<bool> notifier;
  final String image;
  final String date;
  const ProjectTaskActiveCard(
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
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: .30,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              backgroundColor: HexColor.fromHex("B1FEE2"),
              icon: Icons.share,
              onPressed: (BuildContext context) {},
            ),
            SlidableAction(
              icon: Icons.delete,
              backgroundColor: HexColor.fromHex("F5A3FF"),
              onPressed: (BuildContext context) {},
            ),
          ],
        ),
        child: Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: AppColors.primaryBackgroundColor,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: ClipOval(
                        child: Center(
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.pink,
                                        AppColors.lightMauveBackgroundColor
                                      ]),
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle),
                                      child: Center(
                                          child: Container(
                                              width: 12,
                                              height: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle)))))),
                        ),
                      ),
                    ),
                    AppSpaces.horizontalSpace20,
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(header,
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18)),
                          Text(date,
                              style: GoogleFonts.lato(
                                  color: HexColor.fromHex("EA9EEE")))
                        ])
                  ]),
                  // replace with image
                  ProfileDummy(
                      color: HexColor.fromHex(backgroundColor),
                      dummyType: ProfileDummyType.Image,
                      image: this.image,
                      scale: 1.0),
                ])),
      ),
    );
  }
}
