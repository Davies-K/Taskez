import 'package:flutter/material.dart';

import 'back_button.dart';

class NavigationBack extends StatelessWidget {
  const NavigationBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBackButton();
  }
}
