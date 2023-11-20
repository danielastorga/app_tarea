
import 'package:app_tarea/screens/home/home_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    
    super.onInit();
     
  }


  @override
  void onReady() {
   
    super.onReady();
    
    Future.delayed(
      const Duration (seconds: 3),
      (){
        // Get.to( () => HomeScreen());
        Get.to( () => const HomeScreen());
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}