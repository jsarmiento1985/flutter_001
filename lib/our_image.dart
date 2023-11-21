import 'package:flutter/material.dart';

class OurImage extends StatelessWidget {
  final String pathImage;
  final double widthImage;
  final double heightImage;

  const OurImage(
      {super.key,
      required this.pathImage,
      required this.widthImage,
      required this.heightImage});

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      width: widthImage,
      height: heightImage,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(pathImage),
        fit: BoxFit.cover,
      )),
    );

    return photo;
  }
}
