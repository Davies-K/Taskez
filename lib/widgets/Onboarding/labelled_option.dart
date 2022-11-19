import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

// ignore: must_be_immutable
class LabelledOption extends StatelessWidget {
  final String label;
  final String? link;
  final Color? color;
  final String? boxColor;
  final VoidCallback? callback;
  final IconData icon;

  LabelledOption(
      {Key? key,
      this.color,
      this.link,
      this.callback,
      this.boxColor,
      required this.label,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: MergeSemantics(
              child: InkWell(
            onTap: callback,
            child: ListTile(
                title: Row(
                  children: [
                    Icon(icon, color: Colors.white, size: 24),
                    Text("       $label",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: (color != null) ? color! : Colors.white,
                        )),
                  ],
                ),
                trailing: (label == "Set Color")
                    ? Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: HexColor.fromHex(boxColor!),
                        ))
                    : (label == "Copy")
                        ? Text(link!,
                            style: TextStyle(
                                color: AppColors.primaryAccentColor,
                                fontWeight: FontWeight.bold))
                        : SizedBox()),
          )),
        ),

        Divider(height: 1, color: HexColor.fromHex("353742"))
        // Divider(height: 1, color: HexColor.fromHex("616575"))
      ],
    );
  }
}
