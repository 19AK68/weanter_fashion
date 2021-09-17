import 'package:flutter/material.dart';
import 'package:weather_fashion/ui/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Weather Fashion'),
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