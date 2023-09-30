import 'package:dashboard/controllers/home_ctrl.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  void dependencies() {
    Get.put(HomeController());
  }
}
