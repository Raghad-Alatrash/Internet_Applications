
import 'package:get/get.dart';
import 'package:internet_applications/Controller/login_controller.dart';
import 'package:internet_applications/Controller/new_files_request_list_controller.dart';

import '../Controller/splash_controller.dart';
class NewFilesRequestListBindings implements Bindings {

  @override
  void dependencies() {

    Get.put<NewFilesRequestListController>(NewFilesRequestListController());




  }

}