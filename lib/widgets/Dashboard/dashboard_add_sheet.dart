import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/BottomSheets/bottom_sheet_holder.dart';
import 'package:taskez/widgets/Onboarding/labelled_option.dart';

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
          LabelledOption(label: 'Create Task', icon: Icons.add_to_queue),
          LabelledOption(label: 'Create Project', icon: Icons.device_hub),
          LabelledOption(label: 'Create team', icon: Icons.people),
          LabelledOption(label: 'Create Event', icon: Icons.fiber_smart_record),
        ]));
  }
}
