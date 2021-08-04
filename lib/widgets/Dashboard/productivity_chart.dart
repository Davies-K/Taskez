import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';

import 'bar_chart.dart';

class ProductivityChart extends StatelessWidget {
  const ProductivityChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        height: 220,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: AppColors.primaryBackgroundColor),
        child: BarChartSample1());
  }
}
