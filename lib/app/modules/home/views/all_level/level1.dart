import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_app/app/modules/home/controllers/answer_controller.dart';
import 'package:module_app/app/routes/app_pages.dart';

class Level1 extends GetView<answer_controller> {
  // const Level1({Key? key}) : super(key: key);
  final answer_controller _answerController = Get.put(answer_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF9DCD5A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              height: 350,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(160),
                      topLeft: Radius.circular(160)),
                  border: Border.all(width: 3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image(
                    image: AssetImage("assets/images/Daendels.jpg"),
                    height: 210,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Siapa nama pemimpin \n di atas ini?",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  _answerController.wronganswer();
                },
                child: Text(
                  "Andreas Bonifas Daendels",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  _answerController.correct_answer();
                },
                child: Text(
                  "Herman Willew Daendels",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  _answerController.wronganswer();
                },
                child: Text(
                  "Gustav Willem Daendels",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  _answerController.wronganswer();
                },
                child: Text(
                  "Albertus Hendrik Daendels",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}