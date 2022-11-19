import 'package:flutter/material.dart';
import 'package:taskez/Constants/constants.dart';
import 'package:taskez/Screens/Chat/new_group.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/Chat/add_chat_icon.dart';
import 'package:taskez/widgets/Chat/badged_title.dart';
import 'package:taskez/widgets/Chat/selection_tab.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Forms/search_box.dart';
import 'package:taskez/widgets/Navigation/app_header.dart';
import 'new_message_screen.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _searchController = TextEditingController();
    return Scaffold(
        body: Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TaskezAppHeader(
              title: "Chat",
              widget: AppAddIcon(page: NewMessageScreen()),
            ),
            AppSpaces.verticalSpace20,
            SearchBox(placeholder: 'Search', controller: _searchController),
            AppSpaces.verticalSpace20,
            SelectionTab(title: "GROUP", page: NewGroupScreen()),
            AppSpaces.verticalSpace20,
            BadgedTitle(
              title: "Marketing",
              color: 'A5EB9B',
              number: '12',
            ),
            AppSpaces.verticalSpace20,
            Transform.scale(
                alignment: Alignment.centerLeft,
                scale: 0.8,
                child: buildStackedImages(numberOfMembers: "8")),
            AppSpaces.verticalSpace20,
            BadgedTitle(
              title: "Design",
              color: 'FCA3FF',
              number: '6',
            ),
            AppSpaces.verticalSpace20,
            Transform.scale(
                alignment: Alignment.centerLeft,
                scale: 0.8,
                child: buildStackedImages(numberOfMembers: "2")),
            AppSpaces.verticalSpace20,
            SelectionTab(title: "DIRECT MESSAGES", page: NewMessageScreen()),
            AppSpaces.verticalSpace20,
            Expanded(
                child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(children: [...onlineUsers]),
            )),
          ]),
        ),
      )
    ]));
  }
}
