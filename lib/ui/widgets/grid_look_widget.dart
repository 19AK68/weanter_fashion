import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


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
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: myProducts.length,
        itemBuilder: (BuildContext ctx, index) {
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
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), border:
                    Border.all(color: Color(0xffd1d1d1))
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(height:240,
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                  image: DecorationImage(image: AssetImage(myPhoto[index] ),
                  fit: BoxFit.cover,)),
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
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                      IconButton(
                        icon:   Icon(Icons.favorite_border,color: Colors.red,), onPressed: () {  }
                        ,
                      ),
                      IconButton(
                        icon:   Icon(Icons.share,color: Color(0xff262626)), onPressed: () {  }
                        ,
                      ),
                    ],

                 ),
                  ),

                  //  color: Colors.red[100],

              ],
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
