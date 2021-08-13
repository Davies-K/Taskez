import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';

import 'active_project_selectable_container.dart';
import 'inactive_project_selectable_container.dart';

class ProjectSelectableContainer extends StatelessWidget {
  final bool activated;
  final String header;

  const ProjectSelectableContainer({
    Key? key,
    required this.activated,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool newBool = this.activated;
    ValueNotifier<bool> _totalDueTrigger = ValueNotifier(newBool);

    return ValueListenableBuilder(
        valueListenable: _totalDueTrigger,
        builder: (BuildContext context, _, __) {
          return _totalDueTrigger.value
              ? Column(
                  children: [
                    InactiveProjectSelectableContainer(
                      header: header,
                      notifier: _totalDueTrigger,
                    ),
                    AppSpaces.verticalSpace10
                  ],
                )
              : Column(children: [
                  ActiveProjectSelectableContainer(
                    header: header,
                    notifier: _totalDueTrigger,
                  ),
                  AppSpaces.verticalSpace10
                ]);
        });
  }
}
