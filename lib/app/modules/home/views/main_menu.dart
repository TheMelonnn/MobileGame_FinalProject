import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/database_controller.dart';
import '../controllers/home_controller.dart';
import 'package:module_app/app/routes/app_pages.dart';

class Mainmenu extends GetView<HomeController> {
  final DatabaseController _databasecontroller = Get.put(DatabaseController());

  // const Mainmenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF9DCD5A),
      body: Center(
          child: Container(
            width: 720,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Quiz VOC",
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
            ),
            Text(
              "Menambah Wawasan dan Pengetahuan",
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(60)),
              child: TextButton(
                onPressed: () {
                  Get.toNamed(AppPages.loadingView);
                },
                child: Text(
                  "Start",
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(60)),
              child: TextButton(
                onPressed: () {
                  Get.toNamed(AppPages.settingsView);
                },
                child: Text(
                  "Settings",
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: BorderRadius.circular(60)),
              child: TextButton(
                onPressed: () {
                  exit();
                },
                child: Text(
                  "Exit",
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  void exit() {
    SystemNavigator.pop();
  }
}
