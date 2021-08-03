import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';

class ColouredProjectBadge extends StatelessWidget {
  const ColouredProjectBadge({
    Key? key,
    required this.color,
    required this.category,
  }) : super(key: key);

  final String color;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: HexColor.fromHex(color)),
        child: Icon(Icons.bookmarks,
            color: (category == "Development" ? Colors.black : Colors.white)));
  }
}
