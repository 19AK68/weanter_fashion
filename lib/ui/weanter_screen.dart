import 'package:flutter/material.dart';
import 'package:weather_fashion/resurce/style_app.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

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
      body: Container(
        color: Styles.mainColorBackground,
        child: Center(
          child: Text("WeatherScreen"),
        ),
      ),
    );
  }
}
