import 'package:flutter/material.dart';
import 'package:taskez/BottomSheets/bottom_sheets.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/BottomSheets/bottom_sheet_holder.dart';
import 'package:taskez/widgets/Dashboard/sheet_goto_calendar.dart';
import 'package:taskez/widgets/Forms/form_input_unlabelled.dart';

import '../add_sub_icon.dart';
import 'dashboard_meeting_details.dart';
import 'filled_selectable_container.dart';
import 'in_bottomsheet_subtitle.dart';

class DashboardDesignMeetingSheet extends StatelessWidget {
  DashboardDesignMeetingSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _meetingNameController = new TextEditingController();

    return SingleChildScrollView(
      child: Column(children: [
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
                      autofocus: true,
                      controller: _meetingNameController,
                      obscureText: false,
                    ),
                  ),
                ],
              ),
              AppSpaces.verticalSpace20,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
              FilledSelectableContainer(),
              AppSpaces.verticalSpace20,
              Align(
                alignment: Alignment.centerRight,
                child: AddSubIcon(
                  scale: 0.8,
                  color: AppColors.primaryAccentColor,
                  callback: _addMeetingDetails,
                ),
              ),
            ]))
      ]),
    );
  }

  void _addMeetingDetails() {
    showAppBottomSheet(
      DashboardMeetingDetails(),
      isScrollControlled: true,
      popAndShow: true,
    );
  }
}
