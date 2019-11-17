import 'package:d_weather/d_weather.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:io';

Future<Weather> getWeather(String cityName) async {
  String url = "https://api.openweathermap.org/data/2.5/weather?q=${cityName}&appid=${Platform.environment['APP_ID']}";
  Response res = await get(url);
  Map<String, dynamic> json = jsonDecode(res.body);
  Weather weather = Weather(
    cityName,
    json['weather'][0]['main'],
    json['main']['temp'].toDouble(),
    json['main']['temp_max'].toDouble(),
    json['main']['temp_min'].toDouble(),
    json['main']['humidity'].toDouble(),
  );
  return weather;
}

