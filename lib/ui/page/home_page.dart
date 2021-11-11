import 'package:flutter/material.dart';
import 'package:weather_fashion/model/dark_theme_provider.dart';
import 'package:weather_fashion/resurce/style_app.dart';
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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(

      child: Scaffold(
        resizeToAvoidBottomInset: false,
      backgroundColor: !appModel.darkTheme?Styles.mainColorBackground.withOpacity(1):Color(0xff3f3d56),
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
            backgroundColor: Styles.colorBottomBar,


          currentIndex: currentBottonIndex,
          selectedItemColor: Color(0xffffffff),
          unselectedItemColor:Color(0xffCEF6FC).withOpacity(0.5),
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
                Icons.star_border,

              ),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Phone",
            ),
            
          ],
        // backgroundColor:Colors.transparent

        ),

        body: Stack(
          children: [
            Column(

              children:<Widget> [

                WeatherWidget(),

               Expanded(  child: Padding(
                 padding:  EdgeInsets.only(top:height*0.05),
                 child: GridLookWidget(),
               )),


              ],
            ),
          ],
        ),
        drawer: CustomDrawer(),

      ),
    );
  }
}