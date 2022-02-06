import 'package:flutter/material.dart';
import 'package:weather_fashion/data/weanter/weather_api/weather_api_client.dart';
import 'package:weather_fashion/data/weanter/weather_api/weather_api_client.dart';
import 'package:weather_fashion/model/weather/basic_model_weather.dart';
import 'package:weather_fashion/resurce/style_app.dart';

class WeatherScreen extends StatefulWidget {
  WeatherScreen();

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  WeatherApiClient client = WeatherApiClient();
  BasicWeatherModel? _model;
  var data;

  Future geData() async {
    return client.getCurrentWeather(client.myCity)!.then((data) {
      _model = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.mainColorBackground,
          shadowColor: Colors.transparent,

          //UiThemes.colorMain,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Weather",
                  style: TextStyle(
                    color: Styles.colorTitle,
                    //UiThemes.colorWhite,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
        body: FutureBuilder(
          future: geData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                color: Styles.mainColorBackground,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(

                          child: Text(
                            "${_model!.name}",style: TextStyle(fontSize: 40)

                          )),
                    ),
                //    Icon(IconData(int.parse("0xe${_model!.weather!.last!.icon!}"))),
                    Center(
                      child: Container(
                          color: Styles.mainColorBackground,
                          child: Text("${_model!.main!.temp.toString()}\u00B0 C",style: TextStyle(fontSize: 40), ),


                          ),
                    ),

                  ],
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              Future.delayed( const Duration(seconds: 10),);
              return (Center(
                child: 
                Container(color:Colors.white,child: CircularProgressIndicator()),
              ));
            }
            return Container();
          },
        ));
  }
}
