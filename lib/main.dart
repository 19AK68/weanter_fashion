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
      drawer: Custom_Drawer(),

    );
  }
}

class Custom_Drawer extends StatelessWidget {
  const Custom_Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,//20.0,
        child: Drawer(
          child: ListView(
          children: <Widget>[
            new DrawerHeader(
              // margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green[200]),
                  accountName: Text('Irina Last'),
                  accountEmail: Text("WF@weatheranfasion.com"),
                  currentAccountPicture: new CircleAvatar(
                    radius:60,



                    backgroundColor: Colors.blue[100],
                    backgroundImage:
                    Image.asset("assets/user_irina.jpg",fit: BoxFit.fill, width: 60,height: 60,
                    ).image, // for Network image
                  )),
            ),
            new ListTile(
                title: new Text("About"),
                leading: Icon(Icons.account_box),
                onTap: (){
                  Navigator.pop(context);
                }
            ),
            new ListTile(
                title: new Text("Setting"),
                leading: Icon(Icons.settings),
                onTap: (){
                  Navigator.pop(context);
                }
            )
          ],
    ),
        ),
      );
  }
}
