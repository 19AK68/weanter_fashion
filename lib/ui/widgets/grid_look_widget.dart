import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_view/photo_view.dart';
import 'package:weather_fashion/resurce/style_app.dart';


class GridLookWidget extends StatelessWidget {
  final List<Map> myProducts =
  List.generate(6, (index) => {"id": index, "name": "Loke: $index"})
      .toList();
  final List<String> myPhoto = [
    "assets/9291.png",
    "assets/9289.png",
    "assets/9292.png",
    "assets/9290.png",
    "assets/9302.jpg",
    "assets/9313.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
    staggeredTileBuilder:(index)  =>
        StaggeredTile.count(1, 2),

        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        crossAxisCount: 2,

        itemCount: myProducts.length,
        itemBuilder: ( ctx, index) {
          return InkWell(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      GalleryPage(photo: myPhoto[index],),
                ),
              );
            },
            child: Card(
              child: Container(
                  decoration: BoxDecoration(
                     color: Styles.colorBottomBar  ,
                      borderRadius: BorderRadius.circular(15), border:
                      Border.all(color: Color(0xffd1d1d1))
              ),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(height:240,
                decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                      image: DecorationImage(image: AssetImage(myPhoto[index] ),
                      fit: BoxFit.cover,)),
                    ),
                  ),
                      //child: Image.asset(myPhoto[index], fit: BoxFit.contain,)),
                  // Container(
                  // //  color: Colors.green[200],
                  // height: 220, alignment: Alignment.topLeft,
                  //  // child: Text(myProducts[index]["name"]),
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //   image: DecorationImage(image: AssetImage(myPhoto[index] ),
                  //   fit: BoxFit.fitWidth,)),
                  // ),
                  Container(

                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        IconButton(
                          icon:   Icon(Icons.favorite_border,color: Color(0xffCEF6FC), ), onPressed: () {  }
                          ,
                        ),
                        IconButton(
                          icon:   Icon(Icons.star_border,color:Color(0xffCEF6FC)), onPressed: () {  }
                          ,
                        ),
                      ],

                   ),
                    ),

                    //  color: Colors.red[100],

                ],
              ),
          ),
            ),);
        });
  }
}

class GalleryPage extends StatelessWidget {
  final String photo;

  GalleryPage({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       // color: Colors.green,
          child: PhotoView(
            backgroundDecoration: BoxDecoration(color: Colors.green[100]),

            maxScale: PhotoViewComputedScale.contained * 2,
            minScale: PhotoViewComputedScale.contained * 0.8,

            imageProvider: AssetImage(photo),)
      ),
    );
  }
}
