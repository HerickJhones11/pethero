import 'package:get/get.dart';
import 'package:pethero/app/views/account_page.dart';
import 'package:pethero/app/views/chat_page.dart';
import 'package:pethero/app/views/confirm_password_page.dart';
import 'package:pethero/app/views/confirm_password_update_page.dart';
import 'package:pethero/app/views/confirm_register.dart';
import 'package:pethero/app/views/filter_page.dart';
import 'package:pethero/app/views/hospedagem_page.dart';

import 'package:pethero/app/views/landing_page.dart';
import 'package:pethero/app/views/home_page/home_page.dart';
import 'package:pethero/app/views/login_page.dart';
import 'package:pethero/app/views/menu_page.dart';
import 'package:pethero/app/views/product_page.dart';
import 'package:pethero/app/views/register_page.dart';
import 'package:pethero/app/views/service_page.dart';
import 'package:pethero/app/views/splashScreen_page.dart';
import 'package:pethero/routes/app_routes.dart';


class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.SPLASH, 
      page: () => Splash(),
      // binding: InitialBinding(),
    ),
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
      page: () => Account(),
    ),
    GetPage(
      name: Routes.HOSPEDAGEM, 
      page: () => Hospedagem(),
    ),
    GetPage(
      name: Routes.REGISTER, 
      page: () => RegisterPage(),
    ),
    GetPage(
      name: Routes.CONFIRM_PASSWORD, 
      page: () => ConfirmPasswordPage(),
    ),
    GetPage(
      name: Routes.CONFIRM_PASSWORD_UPDATED, 
      page: () => ConfirmPasswordUpdatePage(),
    ),
    GetPage(
      name: Routes.CONFIRM_REGISTER, 
      page: () => ConfirmRegister(),
    ),
    GetPage(
      name: Routes.LOGIN, 
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.PRODUCT_PAGE, 
      page: () => ProductPage(),
    ),
    GetPage(
      name: Routes.FILTER, 
      page: () => FilterPage(),
    ),
    GetPage(
      name: Routes.SERVICE_PAGE, 
      page: () => ServicePage(),
    ),
    // GetPage(
    //   name: Routes.CHAT_PAGE, 
    //   page: () => ChatPage(),
    // ),
  ];
}