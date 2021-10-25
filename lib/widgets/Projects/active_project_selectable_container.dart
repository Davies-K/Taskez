import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

class ActiveProjectSelectableContainer extends StatelessWidget {
  final String header;
  final ValueNotifier<bool> notifier;
  const ActiveProjectSelectableContainer({
    Key? key,
    required this.header,
    required this.notifier,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        notifier.value = !notifier.value;
      },
      child: Container(
          width: double.infinity,
          height: 70,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryBackgroundColor, width: 4),
              borderRadius: BorderRadius.circular(10)),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor.fromHex("80BF6B"),
                  ),
                  child: Center(child: Icon(Icons.done, size: 10, color: Colors.white))),
              AppSpaces.horizontalSpace20,
              Text("$header🎉",
                  style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)),
            ]),
            SizedBox()
          ])),
    );
  }
}
