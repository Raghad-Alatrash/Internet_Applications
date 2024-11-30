
import 'package:get/get.dart';
import 'package:internet_applications/Controller/check_out_list_controller.dart';
import 'package:internet_applications/Controller/group_files_list_controller.dart';

class CheckOutListBindings implements Bindings {

  @override
  void dependencies() {

    Get.put<CheckOutListController>(CheckOutListController());




  }

}