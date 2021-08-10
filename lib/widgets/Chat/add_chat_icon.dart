import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskez/Values/values.dart';

class AppAddIcon extends StatelessWidget {
  final StatelessWidget? page;
  final Color? color;
  final double? scale;
  const AppAddIcon({Key? key, this.page, this.scale, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => page!);
      },
      child: Container(
          width: 50 * this.scale!,
          height: 50 * this.scale!,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color ?? Colors.transparent,
              border: Border.all(
                  width: 2, color: color ?? HexColor.fromHex("616575"))),
          child: Icon(Icons.add, color: Colors.white)),
    );
  }
}
