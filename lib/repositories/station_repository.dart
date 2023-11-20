import 'package:app_tarea/models/station_model.dart';
import 'package:app_tarea/providers/station_provider.dart';
import 'package:get/get.dart';

class StationRepository{
  final _apiProvider = Get.find<StationProvider>();
  Future<List<StationModel>> getRadioStations() => _apiProvider.getRadioStations();
}