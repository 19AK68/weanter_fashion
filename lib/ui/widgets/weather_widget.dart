import 'package:flutter/material.dart';
import 'package:weather_fashion/resurce/style_app.dart';

class WeatherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.12, width: width,
      //  color: Colors.red,
      child: Container(
        // color: Colors.black.withOpacity(0.1),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Styles.gradientColorWeanter_1,
                Styles.gradientColorWeanter_2
              ])),

              //  color:LinearGradient(colors:[ Styles.gradientColorWeanter_1,Styles.gradientColorWeanter_2}),
              height: height * 0.12,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    //  color: Colors.yellow[400],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            "assets/icons/01d.png",
                            height: 40,
                            width: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Center(
                            child: Text(
                          '18:00',
                          style: TextStyle(fontSize: 12, color: Colors.black38),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
