
import 'package:get/get.dart';
import 'package:internet_applications/Controller/home_controller.dart';

import '../Controller/splash_controller.dart';
class HomeBindings implements Bindings {

  @override
  void dependencies() {

    Get.put<HomeController>(HomeController());




  }

}