
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_app/app/modules/home/controllers/database_controller.dart';
import 'package:module_app/app/modules/home/views/loading_all.dart';
import 'package:module_app/app/modules/home/views/main_menu.dart';

class SettingsController extends GetxController{
  final DatabaseController _databasecontroller = Get.put(DatabaseController());

  void confirmation() {
    Get.defaultDialog(
        title: "",
        backgroundColor: Colors.lightGreen[100],
        barrierDismissible: false,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kamu Yakin?",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Semua progressmu akan terhapus",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 40,

                child: Row(
                  children: [
                    Icon(
                      Icons.flip_camera_android_outlined,
                      color: Colors.red[400],
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
                        onPressed: () async {
                          final document_id = _databasecontroller.leveldata[0].$id;
                          await _databasecontroller.deleteDocument(document_id);
                          await _databasecontroller.createDocument({
                            'currentlevel' : 1,
                            'detail' : 0
                          });

                          await Get.offAll(Mainmenu());
                        },
                        child: Icon(
                          Icons.check,
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
                          Icons.cancel_outlined,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}