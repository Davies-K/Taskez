import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

// ignore: must_be_immutable
class ToggleLabelOption extends StatelessWidget {
  final String label;
  ValueNotifier<bool>? notifierValue;

  final IconData icon;
  final double? margin;

  ToggleLabelOption(
      {Key? key,
      required this.notifierValue,
      required this.label,
      required this.icon,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder(
            valueListenable: notifierValue!,
            builder: (BuildContext context, _, __) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: this.margin ?? 8.0), // 8.0 as default margin.
                child: MergeSemantics(
                    child: ListTile(
                        title: Row(
                          children: [
                            Icon(icon, color: Colors.white, size: 24),
                            Text(label,
                                style: GoogleFonts.lato(
                                    fontSize: 18, color: Colors.white)),
                          ],
                        ),
                        trailing: notifierValue == null
                            ? SizedBox()
                            : CupertinoSwitch(
                                value: notifierValue!.value,
                                activeColor: AppColors.primaryAccentColor,
                                onChanged: (bool value) {
                                  notifierValue!.value = value;
                                },
                              ))),
              );
            }),
        Divider(height: 1, color: HexColor.fromHex("353742"))
        // Divider(height: 1, color: HexColor.fromHex("616575"))
      ],
    );
  }
}
