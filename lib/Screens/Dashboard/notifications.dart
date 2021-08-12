import 'package:flutter/material.dart';
import 'package:taskez/Data/data_model.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Navigation/default_back.dart';
import 'package:taskez/widgets/Notification/notification_card.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dynamic notificationData = AppData.notificationMentions;

    List<Widget> notificationCards = List.generate(
        notificationData.length,
        (index) => NotificationCard(
              read: notificationData[index]['read'],
              userName: notificationData[index]['mentionedBy'],
              date: notificationData[index]['date'],
              image: notificationData[index]['profileImage'],
              mentioned: notificationData[index]['hashTagPresent'],
              message: notificationData[index]['message'],
              mention: notificationData[index]['mentionedIn'],
              imageBackground: notificationData[index]['color'],
              userOnline: notificationData[index]['userOnline'],
            ));
    return Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: SafeArea(
          child: Column(children: [
            DefaultNav(title: "Notification", type: ProfileDummyType.Image),
            AppSpaces.verticalSpace20,
            Expanded(child: ListView(children: [...notificationCards]))
          ]),
        ));
  }
}
