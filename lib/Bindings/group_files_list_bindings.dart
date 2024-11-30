
import 'package:get/get.dart';
import 'package:internet_applications/Controller/group_files_list_controller.dart';

class GroupFilesListBindings implements Bindings {

  @override
  void dependencies() {

    Get.put<GroupFilesListController>(GroupFilesListController());




  }

}