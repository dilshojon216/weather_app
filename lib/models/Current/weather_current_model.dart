import 'package:weather_app/models/Current/current_now_model.dart';
import 'package:weather_app/models/Current/request_current_model.dart';

import 'location_current_model.dart';

class WeatherCurrent {
  Request? request;
  Location? location;
  CurrentNow? current;

  WeatherCurrent({this.request, this.location, this.current});

  WeatherCurrent.fromJson(Map<String, dynamic> json) {
    request =
        json['request'] != null ? Request.fromJson(json['request']) : null;
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    current =
        json['current'] != null ? CurrentNow.fromJson(json['current']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['request'] = request!.toJson();
    data['location'] = location!.toJson();
    data['current'] = current!.toJson();

    return data;
  }
}
