import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/models/weather_icon.dart';

class WeatherIconBar extends StatelessWidget {
  WeatherIcon? weatherIcon;
  WeatherIconBar({Key? key, this.weatherIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Image.asset(weatherIcon!.iconUrl!,
              height: 60, width: 60, fit: BoxFit.cover),
          Text(
            weatherIcon!.iconName!,
            style: const TextStyle(
                fontSize: 16, color: Colors.white, fontFamily: 'RobotoSlab'),
          ),
        ],
      ),
    );
  }
}
