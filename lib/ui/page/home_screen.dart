import 'package:flutter/material.dart';
import 'package:weather_fashion/model/dark_theme_provider.dart';
import 'package:weather_fashion/resurce/style_app.dart';
import 'package:weather_fashion/ui/widgets/grid_look_widget.dart';
import 'package:weather_fashion/ui/widgets/weather_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DarkThemeProvider appModel = new DarkThemeProvider();
  var currentButtonIndex;

  late List<Widget>? screens;

  @override
  void initState() {
    setState(() {});
    super.initState();
    currentButtonIndex = 0;

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
    return Scaffold(
      appBar: AppBar(
        flexibleSpace:Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              //begin: Alignment.topLeft,end:  Alignment.bottomRight,
                colors: [
                  Color(0xff2767c7).withOpacity(0.2),
                  Color.fromRGBO(39, 103, 199, 0)
                ],
                center: Alignment.topLeft,
                focalRadius:1,
                radius: 5),
          ),
          //child: screens?[currentButtonIndex],
        ),

        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kyiv /Ukraine",
              style: Theme.of(context).textTheme.subtitle1,
            ),

            // Text('Weather&Fashion', ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
              //begin: Alignment.topLeft,end:  Alignment.bottomRight,
              colors: [
                Color(0xff2767c7).withOpacity(0.2),
                Color.fromRGBO(39, 103, 199, 0)
              ],
              center: Alignment.topLeft,
              focalRadius: 1,
              radius: 1),
        ),
        child: screens?[currentButtonIndex],
      ),
      // screens?[currentButtonIndex],

      //resizeToAvoidBottomInset: false,
      // backgroundColor: !appModel.darkTheme ? Colors.white : Colors.transparent,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xffEBF1FA),
          // Colors.blue[50],

          currentIndex: currentButtonIndex,
          onTap: (index) => setState(() => currentButtonIndex = index),
          selectedItemColor: Colors.lightBlueAccent.shade400,
          unselectedItemColor: Colors.grey,

          // print("------currentBottonIndex---- ${currentBottonIndex}")
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,

          iconSize: 32,

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
      ),
    );
  }

  Widget _bodyHomeWidget(BuildContext context) {
    //var size  = MediaQuery.of(context).size;

    return Stack(
      children: [
        WeatherWidget(),
        Padding(
          padding: EdgeInsets.only(top: 150),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              //    color: Colors.blue,
              margin: const EdgeInsets.only(top: 2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Expanded(
                   child: Text(
                     "Clothes for the day",
                     style: TextStyle(color: Colors.black, fontSize: 20),
                   ),
                 ),



                 Expanded(flex:10,child: GridLookWidget()),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  ListCoat() {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        child: Container(
          height: 400,
          decoration: BoxDecoration(color: Colors.white),
          child: Text("R"),
        ));
  }
}
