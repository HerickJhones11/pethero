import 'package:get/get.dart';
import 'package:pethero/app/views/landing_page.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page: () => Landingpage(),
      // binding: InitialBinding(),
    ),
  ];
}