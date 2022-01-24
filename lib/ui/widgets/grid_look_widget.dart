import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:weather_fashion/ui/page/gallery_page.dart';

class GridLookWidget extends StatelessWidget {
  final List<Map> myProducts =
      List.generate(6, (index) => {"id": index, "name": "Loke: $index"})
          .toList();
  final List<String>? myPhoto = [
    "assets/9291.png",
    "assets/9289.png",
    "assets/9292.png",
    "assets/9290.png",
    "assets/9302.jpg",
    "assets/9313.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   // double width = size.width * 0.8 / 2;
   // double height = width + 30;
  //  print("width:${width} -----height:${height} ");

    return GridView.count(
      addAutomaticKeepAlives: false,
     // childAspectRatio: width / height,
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      physics: BouncingScrollPhysics(),
      children: myPhoto!.map((value) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: _itemLook(context, value, ),
        );
      }).toList(),
    );
    // StaggeredGridView.countBuilder(
    //   staggeredTileBuilder: (index) => StaggeredTile.count(1, 2),
    //   crossAxisCount: 2,
    //   itemCount: myProducts.length,
    //   itemBuilder: (ctx, index) {
    //     return _itemLook(context, index, width, height);
    //   });
  }

  Widget _itemLook(BuildContext context, String img, ) {
    return InkWell(
        onTap: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => GalleryPage(
                photo: img, //myPhoto![index],
              ),
            ),
          );
        },
        child: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4),
            child: Stack(
              children: [
                //   elevation: 1,
                // shape: RoundedRectangleBorder(
                //   side: new BorderSide(color: Color(0xff807A7A), width: 5.0),
                //   borderRadius: BorderRadius.circular(25),
                // ),
                Container(
                  height: 160,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue.withOpacity(0.1),
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        //      color: Colors.black.withOpacity(0.5),
                        image: new DecorationImage(
                            image: ExactAssetImage(img), fit: BoxFit.fill ))),

                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: Platform.isAndroid ? 0 : 24),
                    height: 56,
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      children: [
                        favoriteButton(context, false),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                )),
                //     Stack(
                //       children: [
                //
                //         // Positioned.fill(
                //         //     child: Align(
                //         //   alignment: Alignment.topRight,
                //         //   child: Padding(
                //         //     padding: const EdgeInsets.all(8.0),
                //         //     child: Text(
                //         //       "S",
                //         //       style: TextStyle(
                //         //           fontSize: 28,
                //         //           color: Colors.red,
                //         //           fontWeight: FontWeight.bold),
                //         //     ),
                //         //   ),
                //         //   // child: AddToPlanWidget(model, addToPlan: (recipeModel){
                //         //   //   AddToPlanDialog.show(context, recipeModel);
                //         //   // }),
                //         // )),
                //
                //       ],
                //     ),
              ],
            ),
          ),
        ]));
  }

  Widget favoriteButton(BuildContext context, bool isFavorits) {
    return IconButton(
      icon: Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(45)),
          child: Center(
              child: Icon(
            isFavorits ? Icons.favorite : Icons.favorite_border,
            color: Colors.white,
          ))),
      onPressed: () {
        isFavorits = !isFavorits;
        //     _bloc.clickOnFavorite();
      },
    );
  }
}
