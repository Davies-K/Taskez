import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:taskez/Data/data_model.dart';
import 'package:taskez/widgets/Buttons/primary_tab_buttons.dart';
import 'package:taskez/widgets/Chat/add_chat_icon.dart';
import 'package:taskez/widgets/Navigation/app_header.dart';
import 'package:taskez/widgets/Projects/project_card_vertical.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({Key? key}) : super(key: key);

  ValueNotifier<int> _settingsButtonTrigger = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(top: 60.0, right: 20, left: 20),
        child: taskezAppHeader(
          title: "Projects",
          widget: AppAddIcon(),
        ),
      ),
      SizedBox(height: 20),
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
                    // _showDashboardSettings(context);
                  },
                  child:
                      Icon(FeatherIcons.grid, color: Colors.white, size: 30)))
        ]),
      ),
      SizedBox(height: 20),
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                //crossAxisCount:150,
                mainAxisExtent: 220,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (_, index) => ProjectCardVertical(
                projectName: AppData.productData[index]['projectName'],
                category: AppData.productData[index]['category'],
                color: AppData.productData[index]['color'],
                ratingsUpperNumber: AppData.productData[index]
                    ['ratingsUpperNumber'],
                ratingsLowerNumber: AppData.productData[index]
                    ['ratingsLowerNumber'],
              ),
              itemCount: AppData.productData.length,
            ),
          ),
        ),
      )
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     ProjectCardVertical(
      //       projectName: 'Unity Dashboard',
      //       category: 'Design',
      //       color: 'A06AFA',
      //       ratingsUpperNumber: 5,
      //       ratingsLowerNumber: 20,
      //     ),
      //     ProjectCardVertical(
      //       projectName: 'Unity Dashboard',
      //       category: 'Design',
      //       color: 'A06AFA',
      //       ratingsUpperNumber: 5,
      //       ratingsLowerNumber: 20,
      //     ),
      //   ],
      // )
    ]);
  }
}
