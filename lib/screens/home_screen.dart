import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/bottomnavgition/botttom_nav_cubit.dart';
import 'package:weather_app/screens/index.dart';
import 'package:weather_app/screens/sreach_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = <Widget>[
    MyLoctionPage(),
    SreachPage(),
    ForcastPage(),
    SettingPage(),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(16, 26, 38, 1),
          body: _buildBody(state),
          bottomNavigationBar: _buildBottomNav(),
        );
      },
    );
  }

  Widget _buildBody(int index) {
    return screens.elementAt(index);
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(6, 13, 38, 1),
      selectedIconTheme: const IconThemeData(color: Colors.white, size: 25),
      selectedItemColor: Colors.white,
      selectedFontSize: 14,
      unselectedItemColor: Color.fromRGBO(85, 126, 174, 1),
      unselectedIconTheme:
          const IconThemeData(color: Color.fromRGBO(85, 126, 174, 1), size: 20),
      currentIndex: context.read<BottomNavCubit>().state,
      type: BottomNavigationBarType.fixed,
      onTap: _getChangeBottomNav,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: "My Location",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        const BottomNavigationBarItem(
            icon: Icon(Icons.folder), label: "Forcast"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }

  void _getChangeBottomNav(int index) {
    context.read<BottomNavCubit>().updateIndex(index);
  }
}
