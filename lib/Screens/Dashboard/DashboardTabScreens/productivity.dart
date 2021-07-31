import 'package:flutter/material.dart';
import 'package:taskez/widgets/Dashboard/daily_goal_card.dart';
import 'package:taskez/widgets/Dashboard/productivity_chart.dart';

class DashboardProductivity extends StatelessWidget {
  const DashboardProductivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [DailyGoalCard(), SizedBox(height: 20), ProductivityChart()],
    );
  }
}
