import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskez/Values/values.dart';

class AppAddIcon extends StatelessWidget {
  final StatelessWidget? page;
  const AppAddIcon({Key? key, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(page!);
      },
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: HexColor.fromHex("616575"))),
          child: Icon(Icons.add, color: Colors.white)),
    );
  }
}
