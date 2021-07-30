import 'package:flutter/material.dart';
import 'package:taskez/widgets/Dashboard/daily_goal_card.dart';

class DashboardProductivity extends StatelessWidget {
  const DashboardProductivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [DailyGoalCard()],
    );
  }
}
