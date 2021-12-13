import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/models/Current/weather_current_model.dart';

class NetworkService {
  final baseUrl = "http://api.weatherstack.com/";
  final apikey = "16bdfc2b608475185ce99e613df0b8a4";
  Future<WeatherCurrent?> getCurrentWeahter(String data) async {
    try {
      final response = await get(
          Uri.parse(baseUrl + "current?access_key=$apikey&query=$data"));
      print(response.body);
      return WeatherCurrent.fromJson(json.decode(response.body));
    } catch (e) {
      print(e);
    }
  }
}
