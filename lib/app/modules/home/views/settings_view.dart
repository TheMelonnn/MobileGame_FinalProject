import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_app/app/modules/home/controllers/loading_view_controller.dart';
import 'package:module_app/app/modules/home/controllers/settings_controller.dart';
import '../controllers/database_controller.dart';
import '../controllers/home_controller.dart';
import 'package:module_app/app/routes/app_pages.dart';

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
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 50,
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Reset Progress",
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
              )
            ],
          ),
        ));
  }
}
