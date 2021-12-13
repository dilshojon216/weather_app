import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/others/theme.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'bloc/bottomnavgition/botttom_nav_cubit.dart';
import 'bloc/mylociton/appbar_symbol_cubit.dart';
import 'bloc/mylociton/current_weather_cubit.dart';
import 'data/network_service.dart';
import 'data/repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var networkService = NetworkService();
    var repository = Repository(networkService: networkService);

    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavCubit>(
          create: (context) => BottomNavCubit(),
        ),
        BlocProvider<WeatherSymbolCubit>(
          create: (context) => WeatherSymbolCubit(),
        ),
        BlocProvider<WeatherCurrentCubit>(
          create: (context) => WeatherCurrentCubit(repository),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: customBody,
                secondary: customGray,
              ),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
