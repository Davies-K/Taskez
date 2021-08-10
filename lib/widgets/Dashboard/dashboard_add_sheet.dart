import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/BottomSheets/bottom_sheet_holder.dart';
import 'package:taskez/widgets/Onboarding/labelled_option.dart';

import 'create_task.dart';

class DashboardAddBottomSheet extends StatelessWidget {
  const DashboardAddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(children: [
          AppSpaces.verticalSpace10,
          BottomSheetHolder(),
          AppSpaces.verticalSpace10,
          LabelledOption(
            label: 'Create Task',
            icon: Icons.add_to_queue,
            callback: () {
              _createTask(context);
            },
          ),
          LabelledOption(label: 'Create Project', icon: Icons.device_hub),
          LabelledOption(label: 'Create team', icon: Icons.people),
          LabelledOption(label: 'Create Event', icon: Icons.fiber_smart_record),
        ]));
  }

  void _createTask(context) {
    Navigator.pop(context);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.primaryBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
              height: Utils.screenHeight * 0.8 - 20,
              child: CreateTaskBottomSheet()),
        );
      },
    );
  }
}
