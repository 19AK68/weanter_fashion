import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      ListView(
      children: <Widget>[
        new DrawerHeader(
        // margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[300]),
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
            title: new Text("О себе"),
            leading: Icon(Icons.account_box),
            onTap: (){}
        ),
        new ListTile(
            title: new Text("Настройки"),
            leading: Icon(Icons.settings),
            onTap: (){}
        )
      ],
    );
  }
}
