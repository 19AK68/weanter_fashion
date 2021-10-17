import 'package:flutter/material.dart';
import 'package:weather_fashion/model/dark_theme_provider.dart';
import 'package:weather_fashion/ui/widgets/custom_drawer.dart';
import 'package:weather_fashion/ui/widgets/grid_look_widget.dart';
import 'package:weather_fashion/ui/widgets/weather_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DarkThemeProvider appModel = new DarkThemeProvider();

  int currentBottonIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        resizeToAvoidBottomInset: false,
      backgroundColor: !appModel.darkTheme?Color(0xfff3fff5):Color(0xff3f3d56),
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
       //   backgroundColor:Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xfff3fff5),


          currentIndex: currentBottonIndex,
          selectedItemColor: Color(0xff1bb55c),
          unselectedItemColor: Color(0xff1bb55c).withOpacity(0.4),
          onTap: (index) => setState(() => currentBottonIndex = index),
          // print("------currentBottonIndex---- ${currentBottonIndex}")
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,

          iconSize: 32  ,

          items: <BottomNavigationBarItem>[


            BottomNavigationBarItem(
             // backgroundColor: Colors.transparent,
              icon: Icon(
                Icons.home,

              ),
              label: "",
            ),
            BottomNavigationBarItem(
             // backgroundColor: Colors.transparent,
              icon: Icon(
                Icons.share,

              ),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Phone",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: " ",
            ),
          ],
        // backgroundColor:Colors.transparent

        ),

        body:  Column(

          children:<Widget> [

            WeatherWidget(),
           Expanded(  child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: GridLookWidget(),
           )),


          ],
        ),
        drawer: CustomDrawer(),

      ),
    );
  }
}