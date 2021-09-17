import 'package:flutter/material.dart';

class GridLookWidget extends StatelessWidget {
  final List<Map> myProducts =
      List.generate(6, (index) => {"id": index, "name": "Loke: $index" })
          .toList();
  final List<String> myPhoto = ["assets/9291.png","assets/9289.png","assets/9292.png","assets/9290.png","assets/9302.jpg","assets/9313.jpg"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2/ 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: myProducts.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
           // child: Text(myProducts[index]["name"]),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(myPhoto[index] ),
            fit: BoxFit.contain,)),
          );
        });
  }
}
