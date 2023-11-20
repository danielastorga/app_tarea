import 'package:app_tarea/models/station_model.dart';
import 'package:dio/dio.dart';

class StationProvider {
  Future<List<StationModel>> getRadioStations() async {
    final dio = Dio();
    final response = await dio.get(
        'https://de1.api.radio-browser.info/json/stations/search?limit=10&language=spanish&hidebroken=true&order=clickcount&reverse=true');
    // print(response.data);
    return (response.data as List)
        .map((json) => StationModel.fromJson(json))
        .toList();
  }
}
