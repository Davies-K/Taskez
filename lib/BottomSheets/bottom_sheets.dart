import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/BottomSheets/project_detail_sheet.dart';

class TaskezBottomSheet {
  // static const MethodChannel _channel = MethodChannel('taskezBottomSheet');
}

showSettingsBottomSheet(context) {
  return Get.bottomSheet(ProjectDetailBottomSheet(),
      backgroundColor: AppColors.primaryBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      isScrollControlled: true);
}
