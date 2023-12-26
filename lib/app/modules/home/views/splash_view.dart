import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_app/app/modules/home/controllers/home_controller.dart';
import 'package:module_app/app/modules/home/controllers/splash_controller.dart';

class SplashView extends GetView<HomeController> {

  final SplashController _splashController =
      Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF9DCD5A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: avoid_unnecessary_containers
            Text(
              "Quiz VOC",
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Container(
              child: const Image(
                image: AssetImage("assets/images/main_character.png"),
                width: 300,
                height: 300,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
                "by",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            Container(
              child: Text(
                "Chipi Chipi Chapa Chapa Dubi Dubi Daba Daba",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.all(20),
            )
          ],
        ),
      ),
    );
  }
}
