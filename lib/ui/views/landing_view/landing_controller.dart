import 'package:flutter/material.dart';
import 'package:foodordaring2/core/enums/notification_type.dart';
import 'package:foodordaring2/core/services/base_controller.dart';
import 'package:foodordaring2/ui/shared/colors.dart';
import 'package:foodordaring2/ui/shared/utils.dart';
import 'package:get/state_manager.dart';

class LandingController extends BaseController {
  Rx<Color> color = AppColors.mainOrangeColor.obs;

  @override
  void onInit() {
    notificationService.notificationStream.stream.listen((event) {
      if (event.notificatioNType == NotificationType.CHANGECOLOR.name) {
        color.value = AppColors.mainBlueColor;
      }
    });
    super.onInit();
  }
}
