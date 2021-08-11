import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/BottomSheets/bottom_sheet_holder.dart';
import 'package:taskez/widgets/Dashboard/sheet_goto_calendar.dart';
import 'package:taskez/widgets/Forms/form_input_unlabelled.dart';

import '../add_sub_icon.dart';
import 'in_bottomsheet_subtitle.dart';

class DashboardDesignMeetingSheet extends StatelessWidget {
  TextEditingController _meetingNameController = new TextEditingController();

  DashboardDesignMeetingSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppSpaces.verticalSpace10,
      BottomSheetHolder(),
      AppSpaces.verticalSpace10,
      Padding(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            begin: FractionalOffset.topLeft,
                            end: FractionalOffset.bottomRight,
                            colors: [
                              HexColor.fromHex("8DCB73"),
                              HexColor.fromHex("8DCB73"),
                            ]))),
                AppSpaces.horizontalSpace20,
                Expanded(
                  child: UnlabelledFormInput(
                    placeholder: "Design Meeting",
                    keyboardType: "text",
                    controller: _meetingNameController,
                    obscureText: false,
                  ),
                ),
              ],
            ),
            AppSpaces.verticalSpace20,
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              SheetGoToCalendarWidget(
                cardBackgroundColor: AppColors.primaryAccentColor,
                textAccentColor: HexColor.fromHex("90E7E7"),
                value: 'Today 3PM',
                label: 'Due Date',
              ),
              SheetGoToCalendarWidget(
                cardBackgroundColor: HexColor.fromHex("C25DFF"),
                textAccentColor: HexColor.fromHex("E699E9"),
                value: 'Today 4:30PM',
                label: 'End',
              )
            ]),
            AppSpaces.verticalSpace20,
            InBottomSheetSubtitle(title: "INVITES"),
            AppSpaces.verticalSpace10,
            Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 15.0),
                height: 120,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: HexColor.fromHex("181A1F"),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '2 members ',
                                style: GoogleFonts.lato(
                                    fontSize: 12,
                                    color: HexColor.fromHex("92EAEA"),
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'are invited',
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 12,
                                      )),
                                ],
                              ),
                            ),
                            Row(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.edit,
                                      color: Colors.white, size: 20),
                                  //AppSpaces.horizontalSpace10,
                                  IconButton(
                                      onPressed: null,
                                      icon: Icon(Icons.add,
                                          color: Colors.white, size: 25))
                                ])
                          ]),
                      Transform.scale(
                          alignment: Alignment.topLeft,
                          origin: Offset.zero,
                          scale: 0.7,
                          child: buildStackedImages(numberOfMembers: "2"))
                    ])),
            AppSpaces.verticalSpace20,
            Align(
              alignment: Alignment.centerRight,
              child: AddSubIcon(
                scale: 0.8,
                color: AppColors.primaryAccentColor,
                callback: () {
                  //_addMeeting(context);
                },
              ),
            ),
          ]))
    ]);
  }
}
