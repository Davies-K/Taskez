import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Buttons/primary_tab_buttons.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Projects/project_detail_appbar.dart';
import 'package:taskez/widgets/Shapes/app_settings_icon.dart';

class ProjectDetails extends StatelessWidget {
  final String color;
  final String projectName;
  final String category;
  ProjectDetails(
      {Key? key,
      required this.color,
      required this.projectName,
      required this.category})
      : super(key: key);

  ValueNotifier<int> _settingsButtonTrigger = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DarkRadialBackground(
            color: HexColor.fromHex("#181a1f"),
            position: "topLeft",
          ),
          Padding(
            padding: EdgeInsets.only(top: 60.0, right: 20, left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ProjectDetailAppBar(
                category: category,
                color: color,
                projectName: projectName,
              ),
              AppSpaces.verticalSpace20,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                //tab indicators
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PrimaryTabButton(
                        buttonText: "All Tasks",
                        itemIndex: 0,
                        notifier: _settingsButtonTrigger),
                    PrimaryTabButton(
                        buttonText: "Recent",
                        itemIndex: 1,
                        notifier: _settingsButtonTrigger),
                    PrimaryTabButton(
                        buttonText: "Starred",
                        itemIndex: 2,
                        notifier: _settingsButtonTrigger)
                  ],
                ),

                Container(
                    alignment: Alignment.centerRight,
                    child: AppSettingsIcon(
                        // callback: ((),{_showDashboardSettings(context);}),
                        ))
              ])
            ]),
          ),
        ],
      ),
    );
  }
}
