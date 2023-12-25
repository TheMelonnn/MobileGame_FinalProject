import 'dart:ffi';

import 'package:get/get.dart';
import 'package:module_app/app/routes/app_pages.dart';

class LoadingViewController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(microseconds: 1000000), () {
      Get.toNamed(AppPages.selectlevel);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
