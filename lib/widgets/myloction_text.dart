import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import 'package:weather_app/models/Current/weather_current_model.dart';

Widget myLcotionText(WeatherCurrent request) {
  return Column(
    children: [
      Text(
        request.request!.query!,
        style: const TextStyle(
            fontSize: 25,
            fontFamily: 'RobotoSlab',
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        convertTime(request.location!.localtime!),
        style: const TextStyle(
            fontSize: 16, fontFamily: 'RobotoSlab', color: Colors.white),
      ),
    ],
  );
}

String convertTime(String value) {
  return Jiffy(value).yMMMMd;
}
