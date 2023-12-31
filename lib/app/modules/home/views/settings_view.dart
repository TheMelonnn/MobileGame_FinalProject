import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_app/app/modules/home/controllers/loading_view_controller.dart';
import 'package:module_app/app/modules/home/controllers/settings_controller.dart';
import '../controllers/database_controller.dart';
import '../controllers/home_controller.dart';
import 'package:module_app/app/routes/app_pages.dart';

import 'main_menu.dart';

class SettingsView extends GetView<HomeController> {
  final DatabaseController _databasecontroller = Get.put(DatabaseController());
  final SettingsController _settingsController = Get.put(SettingsController());
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF9DCD5A),
        body: Center(
          // padding: EdgeInsets.fromLTRB(40, 100, 20, 50),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 120,
              // ),
              Container(
                child: Text(
                  "Settings",
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                  width: 337,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red[400],
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                                onPressed: () {
                                  _settingsController.confirmation();
                                },
                                child: Icon(
                                  Icons.replay_outlined,
                                  color: Colors.white,
                                )),
                          ),
                          Text(
                            "Reset Progress",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 30,
                          )
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                                onPressed: () {
                                  _settingsController.playMusic();
                                },
                                child: Icon(
                                  Icons.music_note,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Background Music",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(Mainmenu());
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(width: 3),
                          ),
                          child: Icon(Icons.home, size: 50),
                        ),
                      ),
                    ],
                  )),
              // SizedBox(
              //   height: 150,
              // )
            ],
          ),
        ));
  }
}
