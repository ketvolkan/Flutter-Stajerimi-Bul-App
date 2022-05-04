import 'package:flutter/material.dart';

class RandomCircleImage extends StatelessWidget {
  const RandomCircleImage({Key? key, this.height, this.width}) : super(key: key);
  final imageUrl = 'https://picsum.photos/200/300';
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: FittedBox(
            child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 73.0,
          child: CircleAvatar(
            radius: 70.0,
            backgroundImage: NetworkImage(imageUrl),
          ),
        )));
  }
}
