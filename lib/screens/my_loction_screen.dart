import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/mylociton/appbar_symbol_cubit.dart';
import 'package:weather_app/bloc/mylociton/appbar_symbol_state.dart';
import 'package:weather_app/bloc/mylociton/current_weather_cubit.dart';
import 'package:weather_app/bloc/mylociton/current_weather_state.dart';
import 'package:weather_app/widgets/hour_weahter_data.dart';
import 'package:weather_app/widgets/myloction_text.dart';
import 'package:weather_app/widgets/weather_icon_bar.dart';
import 'package:weather_app/widgets/weather_temp.dart';

class MyLoctionPage extends StatefulWidget {
  MyLoctionPage({Key? key}) : super(key: key);

  @override
  _MyLoctionPageState createState() => _MyLoctionPageState();
}

class _MyLoctionPageState extends State<MyLoctionPage> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<WeatherSymbolCubit>(context).getWeatherSymbol();
    BlocProvider.of<WeatherCurrentCubit>(context).getCurrentWeather("Toshkent");
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            color: const Color.fromRGBO(44, 48, 63, 1), //44, 48, 63
            height: 100,
            child: BlocBuilder<WeatherSymbolCubit, WeatherSymbolState>(
              builder: (context, state) {
                if (state is WeatherSymbolLoaded) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.weatherIconList.length,
                    itemBuilder: (context, index) {
                      return WeatherIconBar(
                        weatherIcon: state.weatherIconList[index],
                      );
                    },
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: BlocBuilder<WeatherCurrentCubit, CurrentWeatherState>(
              builder: (context, state) {
                if (state is CurrentWeatherInitial) {
                  return const CircularProgressIndicator(
                    color: Colors.white,
                  );
                }
                if (state is CurrentWeatherLoading) {
                  return Column(
                    children: [
                      myLcotionText(state.weatherCurrent!),
                      const SizedBox(
                        height: 10,
                      ),
                      weatherTemp(state.weatherCurrent!),
                      // todayText(),
                      const SizedBox(
                        height: 20,
                      ),
                      //  hourWehaterData(),
                    ],
                  );
                }
                if (state is CurrentWeatherError) {
                  return Text(state.error.toString());
                }

                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget todayText() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Today",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'RobotoSlab'),
          ),
          Text(
            "View report",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'RobotoSlab'),
          ),
        ],
      ),
    );
  }
}
