import 'package:flutter/material.dart';
import 'package:flutter_001/fundation/our_text.dart';
import 'package:flutter_001/our_image.dart';

class ElementView extends StatelessWidget {
  final String pathImage;
  final String title;
  final String description;

  const ElementView(
      {super.key,
      required this.pathImage,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final element = Container(
      decoration: const BoxDecoration(
        color: Colors.amberAccent,
      ),
      margin: const EdgeInsets.only(
          top: 0.0, left: 10.0, right: 10.0, bottom: 170.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OurImage(
            pathImage: pathImage,
            widthImage: 150,
            heightImage: 160,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [H2(text: title), NormalText(text: description)],
          )
        ],
      ),
    );

    return element;
  }
}
