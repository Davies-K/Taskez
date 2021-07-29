import 'package:flutter/material.dart';

import 'package:taskez/Values/values.dart';
import 'dart:math' as math;

class BottomNavigationItem extends StatelessWidget {
  final IconData icon;
  const BottomNavigationItem({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(children: [
        Positioned(
            top: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 30, color: Colors.white),
                SizedBox(height: 40),
                Transform.rotate(
                    angle: -math.pi / 4,
                    child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: HexColor.fromHex("C25FFF"))))
              ],
            )),
      ]),
    );
  }
}
