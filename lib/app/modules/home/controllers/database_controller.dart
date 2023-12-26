// ignore_for_file: deprecated_member_use

import 'dart:ffi';

import 'package:appwrite/appwrite.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:module_app/app/modules/home/views/main_menu.dart';
import 'package:module_app/app/routes/app_pages.dart';
import 'client_controller.dart';

class DatabaseController extends ClientController {
  late Databases databases;
  final leveldata = [].obs;

  @override
  void onInit() {
    super.onInit();

    // appwrite
    databases = Databases(client);
    listDocument();
  }

  Future<void> createDocument(Map<String, int> map) async {
    try {
      final result = await databases.createDocument(
        databaseId: "6589652893d9448f20db",
        documentId: ID.unique(),
        collectionId: "65896536c1a5178e4356",
        data: map,
      );
      print("DatabaseController:: createDocument $result");
      // Get.offAll(const DashboardPage());
    } catch (error) {
      _showErrorDialog("Error creating document", error.toString());
    }
  }

  Future<void> listDocument() async {
    Future result = databases.listDocuments(
      databaseId: "6589652893d9448f20db",
      collectionId: "65896536c1a5178e4356",
    );

    result.then((response) {
      leveldata.value = response.documents;
      print('Database:: ${response.documents}');
    }).catchError((error) {
      print(error.response);
    });
  }

  Future<void> updateDocument(String documentId, Map<String, int> map) async {
    try {
      final result = await databases.updateDocument(
        databaseId: "6589652893d9448f20db",
        collectionId: "65896536c1a5178e4356",
        documentId: documentId,
        data: map,
      );
      print("DatabaseController:: updateDocument $result");
      // Get.offAll(const DashboardPage());
    } catch (error) {
      _showErrorDialog("Error updating document", error.toString());
    }
  }

  Future<void> deleteDocument(String documentId) async {
    try {
      final result = await databases.deleteDocument(
        databaseId: "6589652893d9448f20db",
        collectionId: "65896536c1a5178e4356",
        documentId: documentId,
      );
      print("DatabaseController:: deleteDocument $result");
      // Get.offAll(const DashboardPage());
    } catch (error) {
      _showErrorDialog("Error deleting document", error.toString());
    }
  }

  void _showErrorDialog(String title, String errorMessage) {
    Get.defaultDialog(
      title: title,
      titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
      titleStyle: Get.context?.theme.textTheme.headline6,
      content: Text(
        errorMessage,
        style: Get.context?.theme.textTheme.bodyText2,
        textAlign: TextAlign.center,
      ),
      contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
    );
  }

  Future<void> reset() async {
    Get.offAll(Mainmenu());
  }
}

