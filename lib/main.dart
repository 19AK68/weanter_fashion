import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather_fashion/model/dark_theme_provider.dart';
import 'package:weather_fashion/resurce/style_app.dart';
import 'package:weather_fashion/servise/shared_preference.dart';
import 'package:weather_fashion/ui/page/home_page.dart';
import 'package:weather_fashion/ui/widgets/custom_drawer.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(WeatherFashionApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class WeatherFashionApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _WeatherFashionAppState createState() => _WeatherFashionAppState();
}

class _WeatherFashionAppState extends State<WeatherFashionApp> {
  DarkThemeProvider appModel = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    _initAppTheme();
  }
  void _initAppTheme() async {
    appModel.darkTheme = await appModel.darkThemePreference.getTheme();
    if (appModel.darkTheme == null){
      appModel.darkTheme = true;
    }
  }

    @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider<DarkThemeProvider>.value(
        value:appModel,
        child: Consumer<DarkThemeProvider>(
          builder: (context, value, child){
            return
                  MaterialApp(
                  title: 'Weather&Fashion',

                  theme: Styles.themeData(appModel.darkTheme, context),

                  home: Container( decoration:BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.blue.withOpacity(0.9), BlendMode.dstATop),
                      image: AssetImage(!appModel.darkTheme?"assets/clear_day.png":"assets/clear_night2.jpg"),
                    ),
                  ),
                      child: HomePage()),
            );
          },



        ),
      );
  }
}



