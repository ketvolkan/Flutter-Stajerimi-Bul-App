import 'package:flutter/material.dart';

class RandomCircleImage extends StatelessWidget {
  const RandomCircleImage({Key? key, this.height = 100}) : super(key: key);
  final imageUrl = 'https://picsum.photos/200/300';
  final double height;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: NetworkImage(imageUrl));
  }
}
