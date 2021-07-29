import 'package:flutter/material.dart';
import 'package:taskez/widgets/Shapes/settings_strip.dart';

class AppSettingsIcon extends StatelessWidget {
  const AppSettingsIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SettingsStrip(),
      SizedBox(height: 2),
      RotatedBox(quarterTurns: 2, child: SettingsStrip())
    ]);
  }
}
