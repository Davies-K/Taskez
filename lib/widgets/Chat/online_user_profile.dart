import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

class OnlineUserProfile extends StatelessWidget {
  final String image;
  final String imageBackground;
  const OnlineUserProfile(
      {Key? key, required this.image, required this.imageBackground})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProfileDummy(
            dummyType: ProfileDummyType.Image,
            scale: 1,
            image: image,
            color: HexColor.fromHex(imageBackground)),
        Positioned(
            top: 0,
            right: 0,
            child: Container(
                width: 12,
                height: 12,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                child: Center(
                    child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: HexColor.fromHex("94D57B"))))))
      ],
    );
  }
}
