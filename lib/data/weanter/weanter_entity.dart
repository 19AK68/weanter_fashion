import 'package:weather_fashion/model/weather/basic_model_weather.dart';

abstract class WeatherEntity {
  Future<BasicWeatherModel>? getCurrentWeather(String? location);
 }