import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Projects/project_task_active_card.dart';
import 'package:taskez/widgets/Projects/project_task_inactive_card.dart';

class ProjectTaskCard extends StatelessWidget {
  final bool activated;
  final String header;
  final String backgroundColor;
  final String image;
  final String date;
  const ProjectTaskCard(
      {Key? key,
      required this.date,
      required this.activated,
      required this.header,
      required this.image,
      required this.backgroundColor})
      : super(key: key);

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
                    ProjectTaskInActiveCard(
                        header: header,
                        backgroundColor: backgroundColor,
                        notifier: _totalDueTrigger,
                        date: date,
                        image: image),
                    AppSpaces.verticalSpace10
                  ],
                )
              : Column(children: [
                  ProjectTaskActiveCard(
                    header: header,
                    backgroundColor: backgroundColor,
                    notifier: _totalDueTrigger,
                    date: date,
                    image: image,
                  ),
                  AppSpaces.verticalSpace10
                ]);
        });
  }
}
