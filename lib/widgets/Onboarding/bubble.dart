import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  final double scale;
  final Color color;
  const Bubble(this.scale, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 15 * scale,
        height: 15 * scale,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle));
  }
}
