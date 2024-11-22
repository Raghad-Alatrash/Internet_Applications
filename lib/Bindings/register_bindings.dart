
import 'package:get/get.dart';
import 'package:internet_applications/Controller/register_controller.dart';

import '../Controller/splash_controller.dart';
class RegisterBindings implements Bindings {

  @override
  void dependencies() {

    Get.put<RegisterController>(RegisterController());




  }

}