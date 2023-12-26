import 'package:get/get.dart';
import 'package:module_app/app/routes/app_pages.dart';

class SplashController extends GetxController {
   @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(microseconds: 3000000), () {
      Get.toNamed(AppPages.mainmenu);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}