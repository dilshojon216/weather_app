import 'package:flutter/widgets.dart';
import 'package:weather_app/models/weather_icon.dart';

@immutable
abstract class WeatherSymbolState {}

class WeatherSymbolInitial extends WeatherSymbolState {}

class WeatherSymbolLoaded extends WeatherSymbolState {
  final List<WeatherIcon?> weatherIconList;
  WeatherSymbolLoaded(this.weatherIconList);
}

class WeatherSymbolError extends WeatherSymbolState {
  final String error;
  WeatherSymbolError(this.error);
}
