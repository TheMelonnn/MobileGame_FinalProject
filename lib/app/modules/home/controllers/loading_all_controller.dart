import 'dart:ffi';

import 'package:get/get.dart';
import 'package:module_app/app/routes/app_pages.dart';

class LoadingAllController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(microseconds: 10), () {
      Get.toNamed(AppPages.loadingView);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
