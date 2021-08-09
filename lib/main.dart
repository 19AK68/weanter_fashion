import 'package:flutter/material.dart';
import 'package:weather_fashion/ui/widgets/custom_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wenter&Fasshion',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: WeatherFashionApp(),
    );
  }
}

class WeatherFashionApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Weather&Fashion'),
      ),

      body: Center(
        child:Text(
          'application in development',
          style: Theme.of(context).textTheme.headline6,
        ),

      ),
      drawer: CustomDrawer(),

    );
  }
}


