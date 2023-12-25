import 'package:get/get.dart';

import 'database_controller.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final DatabaseController databasecontroller = Get.put(DatabaseController());
  
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
