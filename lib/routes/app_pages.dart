import 'package:get/get.dart';
import 'package:pethero/app/views/account_page.dart';
import 'package:pethero/app/views/home_page/home_page.dart';
import 'package:pethero/app/views/landing_page.dart';
import 'package:pethero/app/views/menu_page.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.LANDING, 
      page: () => LandingPage(),
      // binding: InitialBinding(),
    ),
    GetPage(
      name: Routes.HOME, 
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.MENU, 
      page: () => MenuPage(),
    ),
    GetPage(
      name: Routes.ACCOUNT, 
      page: () => AccountPage(),
    ),
  ];
}