import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';

class GradientColorBall extends StatelessWidget {
  final int selectIndex;
  final ValueNotifier<int> valueChanger;
  final List<Color> gradientList;

  GradientColorBall(
      {Key? key,
      required this.valueChanger,
      required this.selectIndex,
      required this.gradientList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        valueChanger.value = selectIndex;
      },
      child: ValueListenableBuilder(
          valueListenable: valueChanger,
          builder: (BuildContext context, _, __) {
            var size = ((Utils.screenWidth - 46) / 5) - 5;
            return Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: (selectIndex == valueChanger.value)
                      ? Border.all(color: HexColor.fromHex("266FFE"), width: 2)
                      : Border.all(
                          width: 0, color: HexColor.fromHex("181A1F"))),
              child: Center(
                child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [...gradientList]),
                        shape: BoxShape.circle)),
              ),
            );
          }),
    );
  }
}
