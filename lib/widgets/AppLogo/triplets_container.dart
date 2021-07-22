import 'package:flutter/material.dart';

class TripletsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        // height: 30,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          buildBar(0.3, false),
          buildBar(0.6, false),
          buildBar(1.0, true)
        ]));
  }

  buildBar(double scale, bool islast) {
    return Container(
        width: 3,
        height: 40 * scale,
        decoration: BoxDecoration(
            color: islast ? Colors.white : Colors.grey[300],
            borderRadius: BorderRadius.circular(20)));
  }
}
