import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';

class DailyGoalCard extends StatelessWidget {
  const DailyGoalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 220,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: HexColor.fromHex("262A34")));
  }
}
