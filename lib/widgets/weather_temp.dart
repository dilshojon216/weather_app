import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/models/Current/weather_current_model.dart';

Widget weatherTemp(WeatherCurrent weatherCurrent) {
  return Column(
    children: [
      Image.network(
        weatherCurrent.current!.weatherIcons![0],
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        weatherCurrent.current!.weatherDescriptions![0],
        style: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoSlab',
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Temp",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'RobotoSlab'),
                ),
                Text(
                  weatherCurrent.current!.temperature.toString() + " c",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'RobotoSlab'),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Humidity",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'RobotoSlab'),
                ),
                Text(
                  weatherCurrent.current!.humidity.toString() + "%",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'RobotoSlab'),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Wind",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'RobotoSlab'),
                ),
                Text(
                  weatherCurrent.current!.windSpeed.toString() + " Km/h",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'RobotoSlab'),
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );
}
