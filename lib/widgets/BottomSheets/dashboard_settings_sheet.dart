import 'package:flutter/material.dart';
import 'package:taskez/widgets/Buttons/primary_buttons.dart';
import 'package:taskez/widgets/Buttons/text_button.dart';
import 'package:taskez/widgets/Onboarding/toggle_option.dart';

import 'bottom_sheet_holder.dart';

class DashboardSettingsBottomSheet extends StatelessWidget {
  final ValueNotifier<bool> totalTaskNotifier;
  final ValueNotifier<bool> totalDueNotifier;
  final ValueNotifier<bool> totalCompletedNotifier;
  final ValueNotifier<bool> workingOnNotifier;
  const DashboardSettingsBottomSheet(
      {Key? key,
      required this.totalTaskNotifier,
      required this.totalDueNotifier,
      required this.totalCompletedNotifier,
      required this.workingOnNotifier})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(children: [
          Column(
            children: [
              SizedBox(height: 10),
              BottomSheetHolder(),
              SizedBox(height: 20),
              ToggleLabelOption(
                  label: '    Total Task',
                  notifierValue: totalTaskNotifier,
                  icon: Icons.check_circle_outline),
              ToggleLabelOption(
                  label: '    Task Due Soon',
                  notifierValue: totalDueNotifier,
                  icon: Icons.batch_prediction),
              ToggleLabelOption(
                  label: '    Completed',
                  notifierValue: totalCompletedNotifier,
                  icon: Icons.check_circle),
              ToggleLabelOption(
                  label: '    Working On',
                  notifierValue: workingOnNotifier,
                  icon: Icons.flag),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.0, right: 20.0, left: 20),
            child: Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  AppTextButton(buttonText: 'Clear All'),
                  AppPrimaryButton(
                    buttonHeight: 45,
                    buttonWidth: 160,
                    buttonText: "Save Changes",
                  )
                ])),
          )
        ]));
  }
}
