
import 'package:get/get.dart';
import 'package:internet_applications/Controller/home_controller.dart';
import 'package:internet_applications/Controller/view_group_controller.dart';

import '../Controller/check_out_list_controller.dart';
import '../Controller/group_files_list_controller.dart';
import '../Controller/new_files_request_list_controller.dart';
import '../Controller/splash_controller.dart';
class ViewGroupBindings implements Bindings {

  @override
  void dependencies() {

    Get.put<ViewGroupController>(ViewGroupController());
    Get.put<CheckOutListController>(CheckOutListController());
    Get.put<NewFilesRequestListController>(NewFilesRequestListController());
    Get.put<GroupFilesListController>(GroupFilesListController());



  }

}