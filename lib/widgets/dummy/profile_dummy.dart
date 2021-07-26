import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';

enum ProfileDummyType {
  Icon,
  Image,
}

class ProfileDummy extends StatelessWidget {
  ProfileDummyType dummyType;
  double scale;
  String? image;
  IconData? icon;
  ProfileDummy(
      {Key? key,
      required this.dummyType,
      required this.scale,
      this.icon,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40 * scale,
        height: 40 * scale,
        decoration: BoxDecoration(
            color: HexColor.fromHex("9F69F9"), shape: BoxShape.circle),
        child: ClipOval(
            child: this.dummyType == ProfileDummyType.Icon
                ? Icon(Icons.person, color: Colors.white, size: 30 * scale)
                : Image(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      image!,
                    ),
                  )));
  }
}
