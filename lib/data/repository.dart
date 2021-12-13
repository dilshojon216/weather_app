import 'package:weather_app/data/network_service.dart';
import 'package:weather_app/models/Current/weather_current_model.dart';

class Repository {
  final NetworkService? networkService;
  Repository({this.networkService});

  Future<WeatherCurrent?> getCurrecntWeather(String city) async {
    final weahterRaw = await networkService!.getCurrentWeahter(city);
    return weahterRaw!;
  }
}
