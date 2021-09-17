import 'package:flutter/material.dart';
import 'package:weather_fashion/ui/widgets/custom_drawer.dart';
import 'package:weather_fashion/ui/widgets/grid_look_widget.dart';
import 'package:weather_fashion/ui/widgets/weather_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Kyiv ", style:  Theme.of(context).textTheme.subtitle1,),
              Text(" 30 °C", style:  Theme.of(context).textTheme.subtitle1,),

              // Text('Weather&Fashion', ),
            ],
          ),
        //  backgroundColor:Colors.transparent,
        ),

        body:  Container(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child: Column(

              children:<Widget> [

                WeatherWidget(),

                Expanded(child: GridLookWidget()),


              ],
            ),
          ),
        ),
        drawer: CustomDrawer(),

      ),
    );
  }
}