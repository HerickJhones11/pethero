import 'package:get/get.dart';
import 'package:pethero/app/models/click_model.dart';

class HomeController extends GetxController {
  final click = Get.put(Click(tap: 10));


}