import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';

class DashboardAddButton extends StatelessWidget {
  final VoidCallback? iconTapped;
  const DashboardAddButton({
    Key? key,
    this.iconTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: iconTapped,
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: AppColors.primaryAccentColor, shape: BoxShape.circle),
          child: Icon(Icons.add, color: Colors.white)),
    );
  }
}
