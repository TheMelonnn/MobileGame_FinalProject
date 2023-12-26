import 'package:get/get.dart';
import 'package:module_app/app/modules/home/views/all_level/level1.dart';
import 'package:module_app/app/modules/home/views/all_level/level2.dart';
import 'package:module_app/app/modules/home/views/all_level/level3.dart';
import 'package:module_app/app/modules/home/views/all_level/level4.dart';
import 'package:module_app/app/modules/home/views/all_level/level5.dart';
import 'package:module_app/app/modules/home/views/all_level/level6.dart';
import 'package:module_app/app/modules/home/views/loading_all.dart';
import 'package:module_app/app/modules/home/views/loading_view.dart';
import 'package:module_app/app/modules/home/views/main_menu.dart';
import 'package:module_app/app/modules/home/views/select_level.dart';
import 'package:module_app/app/modules/home/views/settings_view.dart';
import 'package:module_app/app/modules/home/views/splash_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const mainmenu = Routes.MENU;
  static const selectlevel = Routes.LEVEL;
  static const level1 = Routes.LEVEL1;
  static const level2 = Routes.LEVEL2;
  static const level3 = Routes.LEVEL3;
  static const level4 = Routes.LEVEL4;
  static const level5 = Routes.LEVEL5;
  static const level6 = Routes.LEVEL6;
  static const splashView = Routes.SplashView;
  static const loadingAll = Routes.LoadingAll;
  static const loadingView = Routes.LoadingView;
  static const settingsView = Routes.SettingsView;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MENU,
      page: () => Mainmenu(),
    ),
    GetPage(
      name: _Paths.LEVEL,
      page: () => SelectLevel(),
    ),
    GetPage(
      name: _Paths.LEVEL1,
      page: () => Level1(),
    ),
    GetPage(
      name: _Paths.LEVEL2,
      page: () => Level2(),
    ),
    GetPage(
      name: _Paths.LEVEL3,
      page: () => Level3(),
    ),
    GetPage(
      name: _Paths.LEVEL4,
      page: () => Level4(),
    ),
    GetPage(
      name: _Paths.LEVEL5,
      page: () => Level5(),
    ),
    GetPage(
      name: _Paths.LEVEL6,
      page: () => Level6(),
    ),
    GetPage(
      name: _Paths.LoadingAll,
      page: () => LoadingAll(),
    ),
    GetPage(
      name: _Paths.LoadingView,
      page: () => LoadingView(),
    ),
    GetPage(
      name: _Paths.SettingsView,
      page: () => SettingsView(),
    ),
    GetPage(
      name: _Paths.SplashView,
      page: () => SplashView(),
    ),
  ];
}
