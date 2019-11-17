import 'package:d_weather/d_weather.dart';
import 'package:d_weather/get_weather.dart';
import 'package:test/test.dart';

void main() {
  test('getWeather', () async {
    Weather weather = await getWeather("Tokyo");
    expect(weather.cityName, "Tokyo");
  });
}
