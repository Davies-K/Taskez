import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

class DailyGoalCard extends StatelessWidget {
  const DailyGoalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        height: 220,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: AppColors.primaryBackgroundColor),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //left side
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Daily Goal',
                      style: GoogleFonts.lato(
                          color: HexColor.fromHex("616575"),
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  AppSpaces.verticalSpace10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              color: HexColor.fromHex("8ACA72"),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: Center(
                            child: Text('3/5',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                )),
                          )),
                      AppSpaces.horizontalSpace10,
                      Text('Tasks',
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  AppSpaces.verticalSpace10,
                  Text('You marked 3/5 tasks\nare done 🎉',
                      style: GoogleFonts.lato(
                          color: HexColor.fromHex("616575"),
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  AppSpaces.verticalSpace20,
                  Container(
                    width: 120,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                HexColor.fromHex("C25FFF")),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(
                                        color: HexColor.fromHex("C25FFF"))))),
                        child: Text('All Task',
                            style: GoogleFonts.lato(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 8, color: HexColor.fromHex("434552"))),
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: ClipOval(
                            child: Image(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                "assets/small-logo.png",
                              ),
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0.0, end: 0.80),
                        duration: const Duration(milliseconds: 1000),
                        builder: (context, value, _) => Container(
                          width: 90,
                          height: 90,
                          child: CircularProgressIndicator(
                              strokeWidth: 8,
                              value: value,
                              color: HexColor.fromHex("8FFFCF")),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ]));
  }
}
