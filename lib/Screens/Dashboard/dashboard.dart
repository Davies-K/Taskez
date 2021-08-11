import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Screens/Chat/chat_screen.dart';
import 'package:taskez/Screens/Profile/my_profile.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/BottomSheets/dashboard_settings_sheet.dart';
import 'package:taskez/widgets/Buttons/primary_tab_buttons.dart';
import 'package:taskez/widgets/Navigation/dasboard_header.dart';
import 'package:taskez/widgets/Shapes/app_settings_icon.dart';

import 'DashboardTabScreens/overview.dart';
import 'DashboardTabScreens/productivity.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  ValueNotifier<bool> _totalTaskTrigger = ValueNotifier(true);
  ValueNotifier<bool> _totalDueTrigger = ValueNotifier(false);
  ValueNotifier<bool> _totalCompletedTrigger = ValueNotifier(true);
  ValueNotifier<bool> _workingOnTrigger = ValueNotifier(false);
  ValueNotifier<int> _buttonTrigger = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            DashboardNav(
              icon: FontAwesomeIcons.comment,
              image: "assets/man-head.png",
              notificationCount: "2",
              page: ChatScreen(),
              title: "Dashboard",
              onImageTapped: () {
                Get.to(() => ProfilePage());
              },
            ),
            AppSpaces.verticalSpace20,
            Text("Hello,\nDereck Doyle 👋",
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            AppSpaces.verticalSpace20,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              //tab indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PrimaryTabButton(
                      buttonText: "Overview",
                      itemIndex: 0,
                      notifier: _buttonTrigger),
                  PrimaryTabButton(
                      buttonText: "Productivity",
                      itemIndex: 1,
                      notifier: _buttonTrigger)
                ],
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: AppSettingsIcon(
                    callback: () {
                      showDashboardSettings(context);
                    },
                  ))
            ]),
            AppSpaces.verticalSpace20,
            ValueListenableBuilder(
                valueListenable: _buttonTrigger,
                builder: (BuildContext context, _, __) {
                  return _buttonTrigger.value == 0
                      ? DashboardOverview()
                      : DashboardProductivity();
                })
          ]),
        ));
  }

  showDashboardSettings(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.primaryBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext context) {
        return Container(
            height: Utils.screenHeight * 1.05,
            decoration: BoxDecoration(),
            child: DashboardSettingsBottomSheet(
              totalTaskNotifier: _totalTaskTrigger,
              totalDueNotifier: _totalDueTrigger,
              workingOnNotifier: _workingOnTrigger,
              totalCompletedNotifier: _totalCompletedTrigger,
            ));
      },
    );
  }
}
