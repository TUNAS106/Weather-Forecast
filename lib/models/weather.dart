import 'dart:convert';

class Weather{
  num id;
  String main;
  String description;
  Weather({
    required this.id,
    required this.main,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'main': this.main,
      'description': this.description,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      id: map['id'] as num,
      main: map['main'] as String,
      description: map['description'] as String,
    );
  }
  String toJson() => json.encode(toMap());
  factory Weather.fromJson(String source) => Weather.fromMap(json.decode(source) as Map<String, dynamic>);
}
class Wind{
  num speed;
  num deg;
  Wind({
    required this.speed,
    required this.deg,
  });
  Map<String, dynamic> toMap() {
    return {
      'speed': this.speed,
      'deg': this.deg,
    };
  }
  factory Wind.fromMap(Map<String, dynamic> map) {
    return Wind(
      speed: map['speed'] as num,
      deg: map['deg'] as num,
    );
  }
  String toJson() => json.encode(toMap());
  factory Wind.fromJson(String source) => Wind.fromMap(json.decode(source) as Map<String, dynamic>);

}
class MainWeather{
  num temp;
  num feels_like;
  num temp_min;
  num temp_max;
  num humidity;
  MainWeather({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.humidity,
  });
  Map<String, dynamic> toMap() {
    return {
      'temp': this.temp,
      'feels_like': this.feels_like,
      'temp_min': this.temp_min,
      'temp_max': this.temp_max,
      'humidity': this.humidity,
    };
  }

  factory MainWeather.fromMap(Map<String, dynamic> map) {
    return MainWeather(
      temp: map['temp'] as num,
      feels_like: map['feels_like'] as num,
      temp_min: map['temp_min'] as num,
      temp_max: map['temp_max'] as num,
      humidity: map['humidity'] as num,
    );
  }
  String toJson() => json.encode(toMap());
  factory MainWeather.fromJson(String source) => MainWeather.fromMap(json.decode(source) as Map<String, dynamic>);

}
class WeatherData{
  int id;
  List<Weather> weather;
  String base;
  MainWeather main;
  Wind wind;
  String name;
  int cod;

  WeatherData({
    required this.id,
    required this.weather,
    required this.base,
    required this.main,
    required this.wind,
    required this.name,
    required this.cod,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'weather': this.weather.map((x) => x.toMap()).toList(),
      'base': this.base,
      'main': this.main.toMap(),
      'wind': this.wind.toMap(),
      'name': this.name,
      'cod': this.cod,
    };
  }
  factory WeatherData.fromMap(Map<String, dynamic> map) {
    return WeatherData(
      id: map['id'] as int,
      weather: List<Weather>.from((map['weather'] as List<dynamic>).map((x) => Weather.fromMap(x as Map<String, dynamic>))),
      base: map['base'] as String,
      main: MainWeather.fromMap(map['main'] as Map<String, dynamic>),
      wind: Wind.fromMap(map['wind'] as Map<String, dynamic>),
      name: map['name'] as String,
      cod: map['cod'] as int,
    );
  }
  String toJson() => json.encode(toMap());
  factory WeatherData.fromJson(String source) => WeatherData.fromMap(json.decode(source) as Map<String, dynamic>);

}


