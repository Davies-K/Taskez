import 'package:flutter/material.dart';
import 'package:taskez/Values/values.dart';

class AddChatIcon extends StatelessWidget {
  const AddChatIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: HexColor.fromHex("616575"))),
        child: Icon(Icons.add, color: Colors.white));
  }
}
