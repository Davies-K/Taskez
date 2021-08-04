import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

// ignore: must_be_immutable
class ToggleLabelOption extends StatelessWidget {
  final String label;
  ValueNotifier<bool> notifierValue;

  final IconData icon;

  ToggleLabelOption(
      {Key? key,
      required this.notifierValue,
      required this.label,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder(
            valueListenable: notifierValue,
            builder: (BuildContext context, _, __) {
              return MergeSemantics(
                  child: ListTile(
                      title: Row(
                        children: [
                          Icon(icon, color: Colors.white, size: 24),
                          Text(label,
                              style: GoogleFonts.lato(
                                  fontSize: 20, color: Colors.white)),
                        ],
                      ),
                      trailing: CupertinoSwitch(
                        value: notifierValue.value,
                        activeColor: HexColor.fromHex("246CFD"),
                        onChanged: (bool value) {
                          notifierValue.value = value;
                        },
                      )));
            }),
        AppSpaces.verticalSpace10,
        // Divider(height: 1, color: HexColor.fromHex("616575"))
      ],
    );
  }
}
