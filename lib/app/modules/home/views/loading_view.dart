import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_app/app/modules/home/controllers/loading_view_controller.dart';
import '../controllers/database_controller.dart';
import '../controllers/home_controller.dart';
import 'package:module_app/app/routes/app_pages.dart';

class LoadingView extends GetView<HomeController> {
  final DatabaseController _databasecontroller = Get.put(DatabaseController());
  final LoadingViewController _loadingViewController =
      Get.put(LoadingViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF9DCD5A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(
              "Loading",
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
            ),],
        ),
      ),
    );
  }
}
