import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/others/weather_list.dart';

import 'appbar_symbol_state.dart';

class WeatherSymbolCubit extends Cubit<WeatherSymbolState> {
  WeatherSymbolCubit() : super(WeatherSymbolInitial());

  void getWeatherSymbol() {
    try {
      final weatherSymbelList = weatherinit();
      emit(WeatherSymbolLoaded(weatherSymbelList));
    } catch (e) {
      emit(WeatherSymbolError(e.toString()));
    }
  }
}
