
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class GalleryPage extends StatelessWidget {
  final String photo;

  GalleryPage({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          )
      ),
      body: Container(
        // color: Colors.green,
          child: PhotoView(
          backgroundDecoration: BoxDecoration(color: Colors.blue[100]),
            maxScale: PhotoViewComputedScale.contained * 2,
            minScale: PhotoViewComputedScale.contained * 0.8,
            imageProvider: AssetImage(photo),
          )),
    );
  }
}