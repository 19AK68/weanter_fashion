import 'dart:convert';

import 'package:weather_fashion/data/weanter/weanter_entity.dart';
import 'package:http/http.dart' as http;
import 'package:weather_fashion/model/weather/basic_model_weather.dart';

class WeatherApiClient {
  var myCity = "Kyiv";//"Poltava";

  Future<BasicWeatherModel>? getCurrentWeather(String? location) async {
    var enfpoins = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=48161d9c273bdf0b9025038bd1a06169&units=metric");

    var response = await http.get(enfpoins);
    var res;

    res = BasicWeatherModel.fromJson(jsonDecode(response.body));
    var respBody = jsonDecode(response.body);
    print("=========respBody============");


    print(res.name);


    return res!;
  }
}