import 'package:flutter/material.dart';
import 'package:taskez/Data/data_model.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Dashboard/overview_task_container.dart';
import 'package:taskez/widgets/Dashboard/task_progress_card.dart';
import 'package:tcard/tcard.dart';

class DashboardOverview extends StatelessWidget {
  const DashboardOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dynamic data = AppData.progressIndicatorList;

    List<Widget> cards = List.generate(
        5,
        (index) => TaskProgressCard(
              cardTitle: data[index]['cardTitle'],
              rating: data[index]['rating'],
              progressFigure: data[index]['progress'],
              percentageGap: int.parse(data[index]['progressBar']),
            ));

    return Column(
      children: [
        Container(
          height: 150,
          child: TCard(
            cards: cards,
          ),
        ),
        AppSpaces.verticalSpace10,
        Column(
          children: [
            OverviewTaskContainer(
                cardTitle: "Total Task",
                numberOfItems: "16",
                imageUrl: "assets/orange_pencil.png",
                backgroundColor: HexColor.fromHex("EFA17D")),
            OverviewTaskContainer(
                cardTitle: "Completed",
                numberOfItems: "32",
                imageUrl: "assets/green_pencil.png",
                backgroundColor: HexColor.fromHex("7FBC69")),
            OverviewTaskContainer(
                cardTitle: "Total Projects",
                numberOfItems: "8",
                imageUrl: "assets/cone.png",
                backgroundColor: HexColor.fromHex("EDA7FA")),
          ],
        ),
      ],
    );
  }
}
