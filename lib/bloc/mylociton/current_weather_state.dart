import 'package:flutter/material.dart';
import 'package:weather_app/models/Current/weather_current_model.dart';

@immutable
abstract class CurrentWeatherState {}

class CurrentWeatherInitial extends CurrentWeatherState {}

class CurrentWeatherError extends CurrentWeatherState {
  final String error;
  CurrentWeatherError(this.error);
}

class CurrentWeatherLoading extends CurrentWeatherState {
  final WeatherCurrent? weatherCurrent;
  CurrentWeatherLoading(this.weatherCurrent);
}
