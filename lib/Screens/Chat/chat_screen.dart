import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Data/data_model.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/CHAT/add_chat_icon.dart';
import 'package:taskez/widgets/Chat/badged_title.dart';
import 'package:taskez/widgets/Chat/online_user.dart';
import 'package:taskez/widgets/Chat/selection_tab.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Forms/search_box.dart';
import 'package:taskez/widgets/Navigation/app_header.dart';
import 'package:taskez/widgets/Navigation/default_back.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';
import 'package:taskez/widgets/stacked_images.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  final onlineUsers = List.generate(
      AppData.onlineUsers.length,
      (index) => OnlineUser(
            image: AppData.onlineUsers[index]['profileImage'],
            imageBackground: AppData.onlineUsers[index]['color'],
            userName: AppData.onlineUsers[index]['name'],
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Padding(
        padding: const EdgeInsets.only(top: 60.0, right: 20, left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          taskezAppHeader(
            title: "Chat",
            widget: AddChatIcon(),
          ),
          SizedBox(height: 20),
          SearchBox(
            placeholder: 'Search',
          ),
          SizedBox(height: 20),
          SelectionTab(title: "GROUP"),
          SizedBox(height: 20),
          BadgedTitle(
            title: "Marketing",
            color: 'A5EB9B',
            number: '12',
          ),
          SizedBox(height: 20),
          buildStackedImages(numberOfMembers: "8"),
          SizedBox(height: 20),
          BadgedTitle(
            title: "Design",
            color: 'FCA3FF',
            number: '6',
          ),
          SizedBox(height: 20),
          buildStackedImages(numberOfMembers: "2"),
          SizedBox(height: 20),
          SelectionTab(title: "DIRECT MESSAGES"),
          SizedBox(height: 20),
          Expanded(flex: 2, child: ListView(children: [...onlineUsers])),
        ]),
      )
    ]));
  }

  Widget buildStackedImages(
      {TextDirection direction = TextDirection.rtl, String? numberOfMembers}) {
    final double size = 50;
    final double xShift = 20;

    Container lastContainer = Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Center(
          child: Text(numberOfMembers!,
              style: GoogleFonts.lato(
                  color: HexColor.fromHex("226AFD"),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ));

    final items = List.generate(
        4,
        (index) => ProfileDummy(
            color: AppData.groupBackgroundColors[index],
            dummyType: ProfileDummyType.Image,
            image: AppData.profileImages[index],
            scale: 1.0));

    return StackedWidgets(
      direction: direction,
      items: [...items, lastContainer],
      size: size,
      xShift: xShift,
    );
  }
}
