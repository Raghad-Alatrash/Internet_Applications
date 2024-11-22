import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    getThemeMode();
    getValidate().whenComplete(()=>Get.toNamed(email.value==""?"/splash":"/home"));
    super.onInit();
  }
  RxString email=RxString("");
  Future getValidate()async{
    SharedPreferences  sharedPreferences=await SharedPreferences.getInstance();
    var obtainedEmail =sharedPreferences.getString("email");
    email.value=obtainedEmail==null?"":obtainedEmail;
  }

  bool isDarkMode=false;
  void getThemeMode()async{
    final savedThemeMode=await AdaptiveTheme.getThemeMode();
    if(savedThemeMode == AdaptiveThemeMode.dark){

        isDarkMode=true;

    }else {

        isDarkMode=false;

    }

  }
  void navToLogIn(){
    Get.offAndToNamed("/login");

  }
}
