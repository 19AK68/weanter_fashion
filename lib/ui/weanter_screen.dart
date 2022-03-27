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

                //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 32.0),
                      child: Container(

                          child: Text(
                            "${_model!.name}",style: TextStyle(fontSize: 28)

                          )),
                    ),
                //    Icon(IconData(int.parse("0xe${_model!.weather!.last!.icon!}"))),
                    Center(
                      child: Container(
                          color: Styles.mainColorBackground,
                          child: Text("${(_model!.main!.temp!).round().toString()}\u00B0",style: TextStyle(fontSize: 36), ),


                          ),

                    ),
                    SizedBox(height: 32,),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: 32),
                      child: Container(

                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:Styles.mainColorBackground,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("title"),
                                Divider(),
                                Text("text1")
                              ],
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 16,),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: 32),
                      child:Container(


                        height: 360,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:Styles.mainColorBackground,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("title"),
                            Divider(),
                            Text("text1")
                          ],
                        )
                      ),
                    )

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
