import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:taskez/Data/data_model.dart';
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

    return Container(
      height: 150,
      child: TCard(
        cards: cards,
      ),
    );
  }
}
