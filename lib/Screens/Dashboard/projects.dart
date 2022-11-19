import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:taskez/Data/data_model.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Buttons/primary_tab_buttons.dart';
import 'package:taskez/widgets/Chat/add_chat_icon.dart';
import 'package:taskez/widgets/Navigation/app_header.dart';
import 'package:taskez/widgets/Projects/project_card_horizontal.dart';
import 'package:taskez/widgets/Projects/project_card_vertical.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _settingsButtonTrigger = ValueNotifier(0);
    final _switchGridLayout = ValueNotifier(false);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: SafeArea(
          child: TaskezAppHeader(
            title: "Projects",
            widget: AppAddIcon(scale: 1.0),
          ),
        ),
      ),
      AppSpaces.verticalSpace20,
      Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          //tab indicators
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PrimaryTabButton(
                  buttonText: "Favorites",
                  itemIndex: 0,
                  notifier: _settingsButtonTrigger),
              PrimaryTabButton(
                  buttonText: "Recent",
                  itemIndex: 1,
                  notifier: _settingsButtonTrigger),
              PrimaryTabButton(
                  buttonText: "All",
                  itemIndex: 2,
                  notifier: _settingsButtonTrigger)
            ],
          ),
          Container(
              alignment: Alignment.centerRight,
              child: InkWell(
                  onTap: () {
                    _switchGridLayout.value = !_switchGridLayout.value;
                    // _showDashboardSettings(context);
                  },
                  child: ValueListenableBuilder(
                      valueListenable: _switchGridLayout,
                      builder: (BuildContext context, _, __) {
                        return _switchGridLayout.value
                            ? Icon(FeatherIcons.clipboard,
                                color: Colors.white, size: 30)
                            : Icon(FeatherIcons.grid,
                                color: Colors.white, size: 30);
                      })))
        ]),
      ),
      AppSpaces.verticalSpace20,
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ValueListenableBuilder(
              valueListenable: _switchGridLayout,
              builder: (BuildContext context, _, __) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //change
                    crossAxisCount: _switchGridLayout.value ? 2 : 1,
                    mainAxisSpacing: 10,

                    //change height 125
                    mainAxisExtent: _switchGridLayout.value ? 220 : 125,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (_, index) => _switchGridLayout.value
                      ? ProjectCardVertical(
                          projectName: AppData.productData[index]
                              ['projectName'],
                          category: AppData.productData[index]['category'],
                          color: AppData.productData[index]['color'],
                          ratingsUpperNumber: AppData.productData[index]
                              ['ratingsUpperNumber'],
                          ratingsLowerNumber: AppData.productData[index]
                              ['ratingsLowerNumber'],
                        )
                      : ProjectCardHorizontal(
                          projectName: AppData.productData[index]
                              ['projectName'],
                          category: AppData.productData[index]['category'],
                          color: AppData.productData[index]['color'],
                          ratingsUpperNumber: AppData.productData[index]
                              ['ratingsUpperNumber'],
                          ratingsLowerNumber: AppData.productData[index]
                              ['ratingsLowerNumber'],
                        ),
                  itemCount: AppData.productData.length,
                );
              },
            ),
          ),
        ),
      )
    ]);
  }
}
