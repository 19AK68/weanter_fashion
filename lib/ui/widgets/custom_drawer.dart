import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_fashion/model/dark_theme_provider.dart';
import 'package:weather_fashion/resurce/style_app.dart';

class CustomDrawer extends StatelessWidget {

  const CustomDrawer({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final themeModel = Provider.of<DarkThemeProvider>(context,listen: false);

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75, //20.0,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            new DrawerHeader(
              // margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                 // decoration: BoxDecoration(color: ),
                  accountName: Text('Irina Last'),
                  accountEmail: Text("WF@weatheranfasion.com"),
                  currentAccountPicture: new CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blue[100],
                    backgroundImage: Image.asset(
                      "assets/user_irina.jpg",
                      fit: BoxFit.fill,
                      width: 60,
                      height: 60,
                    ).image, // for Network image
                  )),
            ),
            new ListTile(


                title: new Text("About"),
                leading: Icon(Icons.account_box),

                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                title: new Text("Setting"),
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.pop(context);
                }),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                   new Text("Tema"),
                  SizedBox(width: 100,),

                  Switch(
                    value: themeModel.darkTheme,
                    onChanged: (value){
                     themeModel.updateTheme(value);

                    },

                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
