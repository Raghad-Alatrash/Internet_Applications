
import 'package:get/get.dart';
import 'package:internet_applications/Services/service.dart';





class InitialBindings implements Bindings{

  @override
  void dependencies() {
    Get.put<UserService>(UserService());
  }

}