import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height = 100, this.width = 100, this.boxFit}) : super(key: key);
  final imageUrl = 'https://picsum.photos/200/300';
  final double height;
  final double width;
  final BoxFit? boxFit;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: boxFit ?? BoxFit.fill,
      width: width,
    );
  }
}
