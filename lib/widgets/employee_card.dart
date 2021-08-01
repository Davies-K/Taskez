import 'package:flutter/material.dart';

import 'active_employee_card.dart';
import 'inactive_employee_card.dart';

class EmployeeCard extends StatelessWidget {
  final String employeeName;
  final String employeeImage;
  final String employeePosition;
  final Color backgroundColor;
  final bool activated;
  const EmployeeCard(
      {Key? key,
      required this.employeeName,
      required this.employeeImage,
      required this.backgroundColor,
      required this.employeePosition,
      required this.activated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
          child: activated
              ? ActiveEmployeeCard(
                  color: backgroundColor,
                  employeeImage: employeeImage,
                  employeeName: employeeName,
                  employeePosition: employeePosition)
              : InactiveEmployeeCard(
                  color: backgroundColor,
                  employeeImage: employeeImage,
                  employeeName: employeeName,
                  employeePosition: employeePosition)),
    );
  }
}
