
import 'package:get/get.dart';

import '../Controller/splash_controller.dart';
class SplashBindings implements Bindings {

  @override
  void dependencies() {

    Get.put<SplashController>(SplashController());




  }

}