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

  var currentBottonIndex;
 late  List<Widget>? screens;


  @override
  void initState(){

    setState(() {});
    super.initState();
    currentBottonIndex = 0;

    screens = <Widget>[
      _bodyHomeWidget(context),
     // HomePage(),
      bodyWidgetFaforitPage(context),
      bodyWidgetRPage(context),
      // MealPlanPage(),
      bodyWidgetPhonePage(context)
      //ShoppingPage(),
//      FavoritePage(),

    ];

    //  WidgetsBinding.instance.addPostFrameCallback((_) => _bloc.initState());


  }

  bodyWidgetFaforitPage(BuildContext context) {
    return Container(color: Colors.red[100]);
  }

  bodyWidgetRPage(BuildContext context) {
    return Container(color: Colors.green[100]);
  }

  bodyWidgetPhonePage(BuildContext context) {
    return Container(color: Colors.blue[100]);
  }

  bodyWidgetLastPage(BuildContext context) {
    return Container(color: Colors.yellow[100]);
  }
  @override
  void dispose() {
    //  _bloc.dispose();
    //   WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(

      child: Scaffold(
       body: screens?[currentBottonIndex],

        //resizeToAvoidBottomInset: false,
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
          onTap: (index) => setState(() => currentBottonIndex = index),

          selectedItemColor: Color(0xffffffff),
          unselectedItemColor:Color(0xffCEF6FC).withOpacity(0.5),

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

        // body:
        // _bodyHomeWidget(),
        drawer: CustomDrawer(),

      ),
    );
  }

 Widget _bodyHomeWidget(BuildContext context) {


    return Stack(
        children: [
          Column(

            children:<Widget> [

              WeatherWidget(),

             Expanded(  child: Padding(
               padding:  EdgeInsets.only(top:20),
               child: GridLookWidget(),
             )),


            ],
          ),
        ],
      );
  }
}