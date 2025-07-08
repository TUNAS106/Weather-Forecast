import 'package:flutter/material.dart';
import 'package:weather_forecast/models/weather.dart';
import 'package:weather_forecast/repositories/api_repository.dart';
class WeatherProvider with ChangeNotifier{
Future<WeatherData> getWeatherCurrent() async{
    WeatherData res = await ApiRepository.callApiGetWeather();
    return res;
  }
}