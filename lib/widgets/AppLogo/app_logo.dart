import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/AppLogo/triplets.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      RotatedBox(
        quarterTurns: 3,
        child: CustomPaint(
          size: Size(
              Utils.screenWidth,
              (Utils.screenWidth)
                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
          // child: Icon(Icons.ac_unit_outlined, color: Colors.white),
        ),
      ),
      Positioned(
          top: Utils.screenHeight / 1.4,
          left: Utils.screenWidth / 4,
          child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: HexColor.fromHex("#84c16c")),
              width: 50,
              height: 50,
              child: Icon(Icons.done, color: Colors.white))),
      Positioned(top: Utils.screenHeight / 1.25, left: Utils.screenWidth / 11, child: TripletsLogo())
    ]);
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9876401 / 3, size.height * 0.4538284 / 3);
    path_0.lineTo(size.width * 0.7837781 / 3, size.height * 0.1007778 / 3);
    path_0.cubicTo(size.width * 0.7672692 / 3, size.height * 0.07220303 / 3, size.width * 0.7368166 / 3,
        size.height * 0.05462586 / 3, size.width * 0.7038486 / 3, size.height * 0.05462586 / 3);
    path_0.lineTo(size.width * 0.2961432 / 3, size.height * 0.05462586 / 3);
    path_0.cubicTo(size.width * 0.2631772 / 3, size.height * 0.05462586 / 3, size.width * 0.2327329 / 3,
        size.height * 0.07220303 / 3, size.width * 0.2162116 / 3, size.height * 0.1007778 / 3);
    path_0.lineTo(size.width * 0.01236199 / 3, size.height * 0.4538284 / 3);
    path_0.cubicTo(size.width * -0.004119972 / 3, size.height * 0.4824011 / 3, size.width * -0.004119972 / 3,
        size.height * 0.5175637 / 3, size.width * 0.01236199 / 3, size.height * 0.5461406 / 3);
    path_0.lineTo(size.width * 0.2162116 / 3, size.height * 0.8992222 / 3);
    path_0.cubicTo(size.width * 0.2327329 / 3, size.height * 0.9277970 / 3, size.width * 0.2631772 / 3,
        size.height * 0.9453762 / 3, size.width * 0.2961432 / 3, size.height * 0.9453762 / 3);
    path_0.lineTo(size.width * 0.7038465 / 3, size.height * 0.9453762 / 3);
    path_0.cubicTo(size.width * 0.7368166 / 3, size.height * 0.9453762 / 3, size.width * 0.7672692 / 3,
        size.height * 0.9277970 / 3, size.width * 0.7837760 / 3, size.height * 0.8992222 / 3);
    path_0.lineTo(size.width * 0.9876401 / 3, size.height * 0.5461406 / 3);
    path_0.cubicTo(size.width * 1.004120 / 3, size.height * 0.5175637 / 3, size.width * 1.004120 / 3,
        size.height * 0.4824011 / 3, size.width * 0.9876401 / 3, size.height * 0.4538284 / 3);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = HexColor.fromHex("#246bfe").withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
