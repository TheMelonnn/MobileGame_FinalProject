import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_app/app/modules/home/views/all_level/level1.dart';
import 'package:module_app/app/modules/home/views/main_menu.dart';
import 'package:module_app/app/modules/home/views/select_level.dart';
import 'package:module_app/app/routes/app_pages.dart';

class answer_controller extends GetxController {
  void correct_answer() {
    Get.defaultDialog(
        title: "",
        backgroundColor: Colors.lightGreen[100],
        barrierDismissible: false,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kamu Benar!",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 120,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellowAccent[400],
                      size: 40,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellowAccent[400],
                      size: 40,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellowAccent[400],
                      size: 40,
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 140,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green[400],
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {
                          Get.offAll(SelectLevel());
                        },
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red[400],
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.replay_outlined,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  void wronganswer() {
    Get.defaultDialog(
        title: "",
        backgroundColor: Colors.lightGreen[100],
        barrierDismissible: false,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Why so weak laa..",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 120,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.grey[350],
                      size: 40,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey[350],
                      size: 40,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey[350],
                      size: 40,
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 140,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green[400],
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {
                          Get.offAll(SelectLevel());
                        },
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red[400],
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.replay_outlined,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  void levellocked(){
    Get.snackbar('Unaccessable :', 'This Level is currently locked',
          backgroundColor: Colors.amber[50]);
  }

  void comingsoon(){
    Get.snackbar('Unaccessable :', 'This Level will available in the next update, stay tune :D',
          backgroundColor: Colors.amber[50]);
  }
}
