
import 'package:get/get.dart';

import '../../services/service.dart';



class InitialBindings implements Bindings{

  @override
  void dependencies() {
    Get.put<UserService>(UserService());
  }

}