import 'package:flutter/material.dart';

class SettingsStrip extends StatelessWidget {
  const SettingsStrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1))),
      SizedBox(width: 2),
      Container(
          width: 12, height: 2, decoration: BoxDecoration(color: Colors.grey))
    ]);
  }
}
