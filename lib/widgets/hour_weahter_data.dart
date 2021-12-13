import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget hourWehaterData() {
  return ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount: horudata().length,
    itemBuilder: (context, index) {
      return horudata()[index];
    },
  );
}

List<Widget> horudata() {
  return [
    Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(167, 180, 224, 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/Moon cloud mid rain.png",
            height: 50,
            width: 50,
          ),
          Column(
            children: const [
              Text(
                "10:00 am",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'RobotoSlab',
                    color: Colors.white),
              ),
              Text(
                "6c",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'RobotoSlab',
                    color: Colors.white),
              )
            ],
          )
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(139, 47, 58, 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/Moon cloud mid rain.png",
            height: 50,
            width: 50,
          ),
          Column(
            children: const [
              Text(
                "10:00 am",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'RobotoSlab',
                    color: Colors.white),
              ),
              Text(
                "6c",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'RobotoSlab',
                    color: Colors.white),
              )
            ],
          )
        ],
      ),
    ),
  ];
}
