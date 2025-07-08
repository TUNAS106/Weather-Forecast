import 'package:dio/dio.dart';
import 'package:weather_forecast/apps/utils/const.dart';
import 'package:weather_forecast/models/weather.dart';

class ApiRepository {
  static Future<WeatherData> callApiGetWeather() async{
    try{
      final dio = Dio();
      final res = await dio.get('https://api.openweathermap.org/data/2.5/weather?lat=15,5501743&lon=108,4054131&units=metric&appid=${Mykey.api_key}');

      final data = res.data;
      WeatherData result = WeatherData.fromMap(data);
      return result;
    } catch(e){
      print('Error: $e');
      throw e;
    }
  }
}