import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Screens/Projects/set_members.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/BottomSheets/bottom_sheet_holder.dart';
import 'package:taskez/widgets/BottomSheets/bottom_sheet_selectable_container.dart';
import 'package:taskez/widgets/Buttons/primary_buttons.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

import 'in_bottomsheet_subtitle.dart';

class DashboardMeetingDetails extends StatelessWidget {
  const DashboardMeetingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          AppSpaces.verticalSpace10,
          BottomSheetHolder(),
          AppSpaces.verticalSpace20,
          Align(
            alignment: Alignment.center,
            child: ProfileDummy(
                color: HexColor.fromHex("9F69F9"),
                dummyType: ProfileDummyType.Image,
                scale: 2.5,
                image: "assets/plant.png"),
          ),
          AppSpaces.verticalSpace10,
          InBottomSheetSubtitle(
            title: "Marketing",
            alignment: Alignment.center,
            textStyle: GoogleFonts.lato(
              fontWeight: FontWeight.w600,
              fontSize: 26,
              color: Colors.white,
            ),
          ),
          AppSpaces.verticalSpace10,
          InBottomSheetSubtitle(
            title: "Tap the logo to upload new file",
            alignment: Alignment.center,
          ),
          AppSpaces.verticalSpace20,
          LabelledSelectableContainer(
            label: "TEAM NAME",
            value: "Marketing",
            icon: Icons.share,
          ),
          AppSpaces.verticalSpace20,
          LabelledSelectableContainer(
            label: "Member",
            value: "Select Members",
            icon: Icons.add,
            valueColor: AppColors.primaryAccentColor,
          ),
          AppSpaces.verticalSpace20,
          LabelledSelectableContainer(
            label: "Privacy",
            value: "Public",
            icon: Icons.expand_more,
            containerColor: HexColor.fromHex("A06AF9"),
          ),
          AppSpaces.verticalSpace40,
          AppPrimaryButton(
              buttonHeight: 50,
              buttonWidth: 180,
              buttonText: "Create New Team",
              callback: () {
                Get.to(() => SelectMembersScreen());
              }),
          AppSpaces.verticalSpace20,
        ]),
      ),
    );
  }
}
