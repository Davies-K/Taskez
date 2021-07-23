import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final double scale;
  final String image;
  final List<Color> gradient;
  const BackgroundImage(
      {Key? key,
      required this.scale,
      required this.image,
      required this.gradient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150 * scale,
        height: 150 * scale,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [...this.gradient])),
        child: ClipOval(
            child: Image(image: AssetImage(this.image), fit: BoxFit.cover)));
  }
}
