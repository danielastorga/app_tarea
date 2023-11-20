import 'package:app_tarea/models/station_model.dart';
import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class DetailController extends GetxController{

  StationModel station = StationModel();

  final audioPlayer = AudioPlayer();
  bool isPlaying = false;

  @override
  void onInit() {    
    super.onInit();
    station = Get.arguments as StationModel;

    audioPlayer.onPlayerStateChanged.listen( (state){
      isPlaying = state == PlayerState.playing;
    });     

  }


  @override
  void onReady() {    
    super.onReady();
  }


  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }


  updateIcon(){
    update([
      "playPause"
    ]);
  }



}