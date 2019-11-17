class Weather {
  String cityName;
  String weatherType;
  double temp;
  double tempMax;
  double tempMin;
  double humidity;

  Weather(cityName, weatherType, temp, tempMax, tempMin, humidity) {
    this.cityName = cityName;
    this.weatherType = weatherType;
    this.temp = temp - 273;
    this.tempMax = tempMax - 273;
    this.tempMin = tempMin -273;
    this.humidity = humidity;
  }
}
