import 'package:flutter/material.dart';
import 'package:taskez/widgets/Navigation/default_back.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(children: [
          DefaultNav(title: "Notification", type: ProfileDummyType.Image),
        ]));
  }
}
