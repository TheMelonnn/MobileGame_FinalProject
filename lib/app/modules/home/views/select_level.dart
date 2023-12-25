import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_app/app/modules/home/views/main_menu.dart';
import 'package:module_app/app/routes/app_pages.dart';
import '../controllers/answer_controller.dart';
import '../controllers/database_controller.dart';
import '../controllers/home_controller.dart';

class SelectLevel extends GetView<HomeController> {
  // const SelectLevel({Key? key}) : super(key: key);
  final answer_controller _answerController = Get.put(answer_controller());
  final DatabaseController _databasecontroller = Get.put(DatabaseController());

  SelectLevel({super.key});

  @override
  Widget build(BuildContext context) {
    var currentlevel = RxInt(_databasecontroller.leveldata[0].data['currentlevel']);
    // print(object)
    return Scaffold(
      backgroundColor: Color(0XFF9DCD5A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 60,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(width: 3)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/images/heart.png"),
                    height: 45,
                    width: 45,
                  ),
                  Image(
                    image: AssetImage("assets/images/heart.png"),
                    height: 45,
                    width: 45,
                  ),
                  Image(
                    image: AssetImage("assets/images/heart.png"),
                    height: 45,
                    width: 45,
                  ),
                  Image(
                    image: AssetImage("assets/images/heart.png"),
                    height: 45,
                    width: 45,
                  ),
                  Image(
                    image: AssetImage("assets/images/heart.png"),
                    height: 45,
                    width: 45,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white, border: Border.all(width: 3)),
                    child: TextButton(
                      onPressed: () {
                        Get.toNamed(AppPages.level1);
                      },
                      child: Text(
                        "1",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all(width: 3)),
                      child: (currentlevel >= 2)
                          ? TextButton(
                              onPressed: () {
                                Get.toNamed(AppPages.level2);
                              },
                              child: Text(
                                "2",
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                _answerController.levellocked();
                              },
                              child: Icon(
                                Icons.lock,
                                size: 50,
                                color: Colors.yellow[700],
                              ),
                            )),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all(width: 3)),
                      child: (currentlevel >= 3)
                          ? TextButton(
                              onPressed: () {
                                Get.toNamed(AppPages.level3);
                              },
                              child: Text(
                                "3",
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                _answerController.levellocked();
                              },
                              child: Icon(
                                Icons.lock,
                                size: 50,
                                color: Colors.yellow[700],
                              ),
                            )),
                ],
              ),
            ),
            Container(
              height: 100,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 3),
                      ),
                      child: (currentlevel >= 4)
                          ? TextButton(
                              onPressed: () {
                                Get.toNamed(AppPages.level4);
                              },
                              child: Text(
                                "4",
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                _answerController.levellocked();
                              },
                              child: Icon(
                                Icons.lock,
                                size: 50,
                                color: Colors.yellow[700],
                              ),
                            )),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all(width: 3)),
                      child: (currentlevel >= 5)
                          ? TextButton(
                              onPressed: () {
                                Get.toNamed(AppPages.level5);
                              },
                              child: Text(
                                "5",
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                _answerController.levellocked();
                              },
                              child: Icon(
                                Icons.lock,
                                size: 50,
                                color: Colors.yellow[700],
                              ),
                            )),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all(width: 3)),
                      child: (currentlevel >= 6)
                          ? TextButton(
                              onPressed: () {
                                Get.toNamed(AppPages.level6);
                              },
                              child: Text(
                                "6",
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                _answerController.levellocked();
                              },
                              child: Icon(
                                Icons.lock,
                                size: 50,
                                color: Colors.yellow[700],
                              ),
                            )),
                ],
              ),
            ),
            Container(
              height: 100,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all(width: 3)),
                      child: GestureDetector(
                        onTap: () {
                          _answerController.comingsoon();
                        },
                        child: Icon(
                          Icons.lock,
                          size: 50,
                          color: Colors.yellow[700],
                        ),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all(width: 3)),
                      child: GestureDetector(
                        onTap: () {
                          _answerController.comingsoon();
                        },
                        child: Icon(
                          Icons.lock,
                          size: 50,
                          color: Colors.yellow[700],
                        ),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all(width: 3)),
                      child: GestureDetector(
                        onTap: () {
                          _answerController.comingsoon();
                        },
                        child: Icon(
                          Icons.lock,
                          size: 50,
                          color: Colors.yellow[700],
                        ),
                      )),
                ],
              ),
            ),
            Container(
              height: 100,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all(width: 3)),
                      child: GestureDetector(
                        onTap: () {
                          _answerController.comingsoon();
                        },
                        child: Icon(
                          Icons.lock,
                          size: 50,
                          color: Colors.yellow[700],
                        ),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all(width: 3)),
                      child: GestureDetector(
                        onTap: () {
                          _answerController.comingsoon();
                        },
                        child: Icon(
                          Icons.lock,
                          size: 50,
                          color: Colors.yellow[700],
                        ),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all(width: 3)),
                      child: GestureDetector(
                        onTap: () {
                          _answerController.comingsoon();
                        },
                        child: Icon(
                          Icons.lock,
                          size: 50,
                          color: Colors.yellow[700],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppPages.mainmenu);
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
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
