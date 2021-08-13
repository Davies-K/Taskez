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
    final bool newBool = this.activated;
    ValueNotifier<bool> _totalDueTrigger = ValueNotifier(newBool);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ValueListenableBuilder(
          valueListenable: _totalDueTrigger,
          builder: (BuildContext context, _, __) {
            return Container(
                child: _totalDueTrigger.value
                    ? ActiveEmployeeCard(
                        color: backgroundColor,
                        notifier: _totalDueTrigger,
                        employeeImage: employeeImage,
                        employeeName: employeeName,
                        employeePosition: employeePosition)
                    : InactiveEmployeeCard(
                        color: backgroundColor,
                        notifier: _totalDueTrigger,
                        employeeImage: employeeImage,
                        employeeName: employeeName,
                        employeePosition: employeePosition));
          }),
    );
  }
}
