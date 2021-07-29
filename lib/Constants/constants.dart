import 'package:flutter/material.dart';
import 'package:taskez/Screens/Dashboard/dashboard.dart';
import 'package:taskez/Screens/Dashboard/notifications.dart';
import 'package:taskez/Screens/Dashboard/projects.dart';
import 'package:taskez/Screens/Dashboard/search_screen.dart';

final List<Widget> dashBoardScreens = [
  Dashboard(),
  ProjectScreen(),
  NotificationScreen(),
  SearchScreen()
];
