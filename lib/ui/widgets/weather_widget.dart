import 'package:flutter/material.dart';
class WeatherWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.2, width:width,
     //color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text("30 °C", style:  Theme.of(context).textTheme.headline5,),
          //
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text("Kyiv", style:  Theme.of(context).textTheme.headline5,),
          // ),

          Container(
            height: height*0.05, width:width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
               Container(
                //  color: Colors.yellow[400],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                     Flexible(
                        child: Image.asset("assets/icons/01d.png",
                        height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: Image.asset("assets/icons/01d.png",
                          height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: Image.asset("assets/icons/01d.png",
                          height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: Image.asset("assets/icons/01d.png",
                          height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: Image.asset("assets/icons/01d.png",
                          height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: Image.asset("assets/icons/01d.png",
                          height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: Image.asset("assets/icons/01d.png",
                          height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: Image.asset("assets/icons/01d.png",
                          height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: Image.asset("assets/icons/01d.png",
                          height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: Image.asset("assets/icons/01d.png",
                          height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: Image.asset("assets/icons/01d.png",
                          height: 60,width:60,  fit: BoxFit.contain,),
                      ),
                      const Center(child: Text('18:00', style: TextStyle(fontSize:12, color: Colors.black38),)),

                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ) ,

    );
  }
}
