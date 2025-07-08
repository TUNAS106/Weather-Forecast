
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_forecast/page/home/home_page.dart';
import 'package:weather_forecast/providers/weather_provider.dart';
import 'package:weather_forecast/page/bottom_navigation/bottom.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigationCustom(),
      ),
    );
  }
}