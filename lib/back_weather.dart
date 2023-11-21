import "package:flutter/material.dart";
import "package:flutter_001/our_list.dart";

class BackWeather extends StatelessWidget {
  const BackWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        GradientBack(),
        OurList(),
      
      ],
    );
  }
}

class GradientBack extends StatelessWidget {
  const GradientBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFffbb00), Color(0xFFf38c02)],
              begin: FractionalOffset(1.0, 0.1),
              end: FractionalOffset(1.0, 0.9))),
    );
  }
}
