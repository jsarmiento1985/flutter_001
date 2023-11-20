// ignore_for_file: file_names

import "package:flutter/material.dart";
import 'package:flutter_001/fundation/colors.dart';

class OurText extends StatelessWidget {
  final String text;
  final Color colorText;
  final double fontSize;

  const OurText(
      {super.key,
      required this.text,
      required this.colorText,
      required this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: colorText, fontSize: fontSize),
    );
  }
}

class H1 extends StatelessWidget {
  final String text;
  const H1({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      colorText: brandSecundary,
      fontSize: 16,
    );
  }
}

class H2 extends StatelessWidget {
  final String text;
  const H2({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      colorText: scale_06,
      fontSize: 16,
    );
  }
}

class NormalText extends StatelessWidget {
  final String text;
  const NormalText({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      colorText: scale_03,
      fontSize: 16,
    );
  }
}
