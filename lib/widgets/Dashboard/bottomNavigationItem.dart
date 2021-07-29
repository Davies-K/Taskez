import 'package:flutter/material.dart';

import 'package:taskez/Values/values.dart';
import 'dart:math' as math;

class BottomNavigationItem extends StatelessWidget {
  final IconData icon;
  final int itemIndex;
  final ValueNotifier<int> notifier;
  const BottomNavigationItem(
      {Key? key,
      required this.itemIndex,
      required this.notifier,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          notifier.value = itemIndex;
        },
        child: ValueListenableBuilder(
            valueListenable: notifier,
            builder: (BuildContext context, _, __) {
              return Stack(children: [
                Positioned(
                    top: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icon,
                            size: 30,
                            color: notifier.value != itemIndex
                                ? Colors.grey
                                : Colors.white),
                        SizedBox(height: 40),
                        notifier.value != itemIndex
                            ? SizedBox(width: 50, height: 50)
                            : Transform.rotate(
                                angle: -math.pi / 4,
                                child: AnimatedContainer(
                                    duration: Duration(milliseconds: 150),
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: HexColor.fromHex("C25FFF"))))
                      ],
                    )),
              ]);
            }),
      ),
    );
  }
}
