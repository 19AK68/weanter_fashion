import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_fashion/resurce/style_app.dart';
import 'package:weather_fashion/ui/weanter_screen.dart';

class WeatherWidget extends StatefulWidget {
  @override
  _WeatherWidgetState createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _controller = TabController(length: 5, vsync: this);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    DateTime now = DateTime.now();
    var futerDay = now.add(new Duration(days: 2));
    var futerDay2 = now.add(new Duration(days: 3));
    var futerDay3 = now.add(new Duration(days: 4));
    String formattedDate = DateFormat('d MMM').format(futerDay);
    String formattedDate2 = DateFormat('d MMM').format(futerDay2);
    String formattedDate3 = DateFormat('d MMM').format(futerDay3);
    print(" -----------${formattedDate}");
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //tabbar

          Container(
            height: 32,
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 10, right: 10),
                controller: _controller,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black38,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: 'Today'),
                  Tab(text: 'Tomorrow'),
                  Tab(text: formattedDate),
                  Tab(text: formattedDate2),
                  Tab(text: formattedDate3),
                ],
              ),
            ),
          ),
          Container(
            height: 110,
            width: double.maxFinite,
            child: TabBarView(
              controller: _controller,
              children: [
                _temperatureHourV2(height, width),
                Text("Tab2"),
                Text("Tab3"),
                Text("Tab4"),
                Text("Tab5"),
              ],
            ),
          ),

          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  List _lisTtemperature = [
    -10,
    -10,
    -10,
    10,
    -9,
    -8,
    -7,
    -6,
    -7,
    -10,
    -10,
    -10,
    -10,
    -10
  ];
  List _listIcon = [
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
    "assets/icons/icon_snow.png",
  ];

  Widget _temperatureHourV2(double height, double width) {
    return Container(
      height: 30,
      width: width,
      child: ListView.builder(
        itemCount: _lisTtemperature.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return _itemTemperatureHour(
              context, _lisTtemperature, _listIcon, index, height);
        },
      ),
    );
  }

  Widget _itemTemperatureHour(BuildContext context, List listTemperature,
      List listIcon, int index, double height) {
    var _hm = DateTime.now().add(Duration(hours: index));
    String _strTime = DateFormat('Hm').format(_hm).toString();
    return InkWell(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => WeatherScreen(),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Center(
                child: Text(
              _strTime,
              style: TextStyle(fontSize: 12, color: Colors.black38),
            )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8),
            child: Container(
              height: height * 0.11,
              child: Card(
                elevation: 2,
                shadowColor: Colors.black38,
                child: Column(
                  children: [
                    Image.asset(
                      listIcon[index],
                      height: 40,
                      width: 60,
                      fit: BoxFit.contain,
                    ),
                    Center(
                      child: Text(listTemperature[index].toString()),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
