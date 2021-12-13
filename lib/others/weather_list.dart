import 'package:weather_app/models/weather_icon.dart';

List<WeatherIcon> weatherinit() {
  return [
    WeatherIcon(
      iconName: 'Rain',
      iconUrl: 'assets/Big rain drops.png',
    ),
    WeatherIcon(
      iconName: 'Drizz',
      iconUrl: 'assets/Big snow.png',
    ),
    WeatherIcon(iconName: 'Thunder', iconUrl: 'assets/Zaps.png'),
    WeatherIcon(
        iconName: 'Light rain', iconUrl: 'assets/Sun cloud angled rain.png'),
    WeatherIcon(
        iconName: 'Moon Cloud', iconUrl: 'assets/Moon cloud mid rain.png'),
    WeatherIcon(
        iconName: 'Fast wind', iconUrl: 'assets/Mid snow fast winds.png'),
  ];
}
