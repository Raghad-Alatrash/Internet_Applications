
import 'package:get/get.dart';
import 'package:internet_applications/Controller/home_controller.dart';
import 'package:internet_applications/Controller/pre_version_controller.dart';
class PreVersionBindings implements Bindings {

  @override
  void dependencies() {

    Get.put<PreVersionController>(PreVersionController());




  }

}