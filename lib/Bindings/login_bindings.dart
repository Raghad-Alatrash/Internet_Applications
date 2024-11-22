
import 'package:get/get.dart';
import 'package:internet_applications/Controller/login_controller.dart';

import '../Controller/splash_controller.dart';
class LoginBindings implements Bindings {

  @override
  void dependencies() {

    Get.put<LoginController>(LoginController());




  }

}