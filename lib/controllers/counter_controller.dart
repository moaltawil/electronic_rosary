
import 'package:azkar_app/prefs/app_preferences.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{

  RxInt counter = 0.obs;
  RxString content = 'استغفر الله'.obs;

  @override
  void onInit() {
    counter.value=AppPreferences().counter ;
    // TODO: implement onInit
    super.onInit();
  }


  void increment(){
     counter++;
  }


}