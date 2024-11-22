import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  @override
  void onInit() {

    super.onInit();
  }
void navToLogIn()async{
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    sharedPreferences.remove("email");

  Get.offAndToNamed("/splash");

}
}
