import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_forecast/models/weather.dart';
import 'package:weather_forecast/page/home/widgets/home_detail_weather.dart';
import 'package:weather_forecast/page/home/widgets/home_location.dart';
import 'package:weather_forecast/page/home/widgets/home_temperature.dart';
import 'package:weather_forecast/page/home/widgets/home_weather_icon.dart';
import 'package:weather_forecast/providers/weather_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF19D2FE),
              Color(0xff1D6CF3),
            ],
          ),
        ),
          child: FutureBuilder(
              future: context.read<WeatherProvider>().getWeatherCurrent(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  );
                }
                if(!snapshot.hasData){
                  return Container(
                    child: Text('nodata',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  );
                }
                WeatherData data = snapshot.data as WeatherData;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HomeWeatherIcon(nameIcon: data.weather[0].main,),
                    HomeTemperature(temp: data.main.temp),
                    HomeLocation(nameLocation: data.name),
                    SizedBox(height: 40),
                    HomeDetailWeather(humidity: data.main.humidity, speedWind: data.wind.speed),

                  ],
                );
              })
      ),
    );
  }
}