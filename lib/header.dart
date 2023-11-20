// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_001/back_weather.dart';
import 'package:flutter_001/our_app_bar.dart';
import 'package:flutter_001/our_footer.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final button = InkWell(
      child: Container(
          margin: const EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0,
          ),
          height: 50.0,
          width: 180.0,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFf38b02),
                offset: Offset(10.0, 10.0),
                blurRadius: 30.0,
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: const Color(0xFFfeb800),
          ),
          child: const Center(
            child: Text(
              "GO TO CALENDAR",
              style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
          )),
    );

    return Scaffold(
      appBar: OurAppBar(
        tittle: "VALHALLA",
        iconAppBar: Icon(Icons.add_alert_rounded),
      ),
      body: Stack(
        children: [
          const BackWeather(),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(
              top: 50.0,
            ),
            child: Column(
              children: [
                const Text(
                  "MONDAY",
                  style: TextStyle(
                      fontSize: 55.0,
                      color: Color(0XFFeba800),
                      fontWeight: FontWeight.w600),
                ),
                button,
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: OurFooter(
        iconRight: Icon(Icons.account_circle),
        iconLeft: Icon(Icons.home),
      ),
    );
  }
}
