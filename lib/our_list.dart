import 'package:flutter/material.dart';
import 'package:flutter_001/our_image.dart';

class OurList extends StatelessWidget {
  const OurList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0.0,
          child: Container(
            height: 320.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
        ),
        OurImage(
          pathImage: 'assets/images/space.jpg',
          widthImage: MediaQuery.of(context).size.width,
          heightImage: 320,
        ),
      ],
    );
  }
}
