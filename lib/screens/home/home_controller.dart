import 'package:app_tarea/models/station_model.dart';
import 'package:app_tarea/providers/station_provider.dart';
import 'package:app_tarea/screens/detail/detail_screen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final _radioStationProvider = StationProvider();
  RxList<StationModel> stations = RxList<StationModel>([]); 
  bool isLoading = true;

  @override
  void onInit() { 
    _loadRadioStations();   
    super.onInit();    
    
  }


  @override
  void onReady() {    
    super.onReady();
  }


  @override
  void onClose() {    
    super.onClose();
  }

    _loadRadioStations() async { 

      stations.value = await _radioStationProvider.getRadioStations();
      isLoading = false;  
    }

    goDetail({
      required StationModel station,
    }){
      Get.to( ()=>  const DetailScreen(), arguments: station );
    }
}