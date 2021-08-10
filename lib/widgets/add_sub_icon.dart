import 'package:flutter/material.dart';

import 'package:taskez/Values/values.dart';

class AddSubIcon extends StatelessWidget {
  final VoidCallback? callback;
  final Color? color;
  final double? scale;

  const AddSubIcon({
    Key? key,
    this.callback,
    this.scale,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
          width: 50 * (scale == null ? 1.0 : scale!),
          height: 50 * (scale == null ? 1.0 : scale!),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color ?? Colors.transparent,
              border: Border.all(
                  width: 2, color: color ?? HexColor.fromHex("616575"))),
          child: Icon(Icons.add, color: Colors.white)),
    );
  }
}
