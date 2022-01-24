
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

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
            imageProvider: AssetImage(photo),
          )),
    );
  }
}