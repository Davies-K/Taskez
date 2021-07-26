import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';

class GradientColorBall extends StatelessWidget {
  final int selectIndex;
  final int currentIndex;
  final List<Color> gradientList;

  GradientColorBall(
      {Key? key,
      required this.currentIndex,
      required this.selectIndex,
      required this.gradientList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: (selectIndex == currentIndex)
              ? Border.all(color: HexColor.fromHex("266FFE"), width: 5)
              : Border.all(width: 0, color: HexColor.fromHex("181A1F"))),
      child: Center(
        child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [...gradientList]),
                shape: BoxShape.circle)),
      ),
    );
  }
}
