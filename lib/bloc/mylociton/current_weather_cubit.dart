import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/mylociton/current_weather_state.dart';
import 'package:weather_app/data/repository.dart';

class WeatherCurrentCubit extends Cubit<CurrentWeatherState> {
  final Repository? repository;
  WeatherCurrentCubit(this.repository) : super(CurrentWeatherInitial());

  void getCurrentWeather(String city) async {
    emit(CurrentWeatherInitial());
    try {
      var dataw = await repository!.getCurrecntWeather(city);
      print(dataw);
      emit(CurrentWeatherLoading(dataw));
    } catch (e) {
      emit(CurrentWeatherError(e.toString()));
    }
  }
}
