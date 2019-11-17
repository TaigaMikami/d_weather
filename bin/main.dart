import 'package:d_weather/d_weather.dart';
import 'package:d_weather/get_weather.dart' as get_weather;

main(List<String> arguments) async {
  Weather weather = await get_weather.getWeather(arguments[0]);
  print("${weather.cityName}の天気");
  print("==========================");
  print("今日の天気：${weather.weatherType}");
  print("気温　　　：${weather.temp.toStringAsFixed(1)}");
  print("最高気温　：${weather.tempMax.toStringAsFixed(1)}℃");
  print("最低気温　：${weather.tempMin.toStringAsFixed(1)}℃");
  print("湿度　　　：${weather.humidity}%");
}
