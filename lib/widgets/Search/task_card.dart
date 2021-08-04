import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';

import 'package:taskez/widgets/Search/active_task_card.dart';
import 'package:taskez/widgets/Search/inactive_task_card.dart';

class SearchTaskCard extends StatelessWidget {
  final bool activated;
  final String header;
  final String subHeader;
  final String date;
  const SearchTaskCard(
      {Key? key,
      required this.date,
      required this.activated,
      required this.header,
      required this.subHeader})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        activated
            ? InactiveTaskCard(header: header, subHeader: subHeader, date: date)
            : ActiveTaskCard(header: header, subHeader: subHeader, date: date),
        AppSpaces.verticalSpace10
      ],
    );
  }
}
