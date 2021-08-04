import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

class LayoutListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final ValueNotifier<int> notifier;
  final int index;

  const LayoutListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.notifier,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Utils.screenWidth - 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon(icon, color: Colors.white, size: 30),
              AppSpaces.horizontalSpace20,
              Text(title,
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 20))
            ]),
            ValueListenableBuilder(
              valueListenable: notifier,
              builder: (BuildContext context, _, __) {
                return Theme(
                  data: ThemeData(
                    //here change to your color
                    unselectedWidgetColor: Colors.white,
                  ),
                  child: Radio(
                    // overlayColor:  unselectedWi,
                    value: notifier.value,
                    groupValue: index,
                    onChanged: ((value) {
                      notifier.value = index;
                    }),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
