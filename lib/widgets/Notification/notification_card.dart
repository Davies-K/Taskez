import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

class NotificationCard extends StatelessWidget {
  final bool read;
  final String userName;
  final String date;
  final String mention;
  final bool mentioned;
  final String message;
  final String image;
  final String imageBackground;
  final bool userOnline;
  const NotificationCard(
      {Key? key,
      required this.read,
      required this.userName,
      required this.date,
      required this.mention,
      required this.mentioned,
      required this.userOnline,
      required this.message,
      required this.image,
      required this.imageBackground})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 10),
        height: 160,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('$userName mentioned you in $mention',
              style: GoogleFonts.lato(
                  color: HexColor.fromHex("666A7B"),
                  fontWeight: FontWeight.w500)),
          AppSpaces.verticalSpace20,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ProfileDummy(
                      dummyType: ProfileDummyType.Image,
                      scale: 1.5,
                      image: image,
                      color: HexColor.fromHex(imageBackground)),
                  userOnline
                      ? Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.black),
                              child: Center(
                                  child: Container(
                                      width: 14,
                                      height: 14,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: HexColor.fromHex("94D57B"))))))
                      : SizedBox(),
                ],
              ),
              AppSpaces.horizontalSpace20,
              Expanded(
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(userName,
                                style: GoogleFonts.lato(color: Colors.white)),
                            Text(date,
                                style: GoogleFonts.lato(
                                    color: read
                                        ? HexColor.fromHex("666A7B")
                                        : HexColor.fromHex("B0FFE1")))
                          ],
                        ),
                        AppSpaces.verticalSpace10,
                        mentioned
                            ? RichText(
                                text: TextSpan(
                                  text: 'Hello ',
                                  style: GoogleFonts.lato(
                                    fontSize: 16,
                                    color: HexColor.fromHex("666A7B"),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '@tranmautritam',
                                        style: GoogleFonts.lato(
                                            color: HexColor.fromHex("EF9EF1"),
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: ', $message',
                                        style: GoogleFonts.lato(
                                          fontSize: 16,
                                          color: HexColor.fromHex("666A7B"),
                                        )),
                                  ],
                                ),
                              )
                            : Text('$message',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color: HexColor.fromHex("666A7B"),
                                )),
                      ]),
                ),
              )
            ],
          ),
          Expanded(child: Divider(color: HexColor.fromHex("666A7B")))
        ]));
  }
}
