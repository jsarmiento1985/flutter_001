import 'package:flutter/material.dart';
import 'package:flutter_001/fundation/colors.dart';

class OurFooter extends StatelessWidget {
  final Icon iconLeft;
  final Icon iconRight;

  const OurFooter({
    super.key,
    this.iconLeft = const Icon(Icons.airline_seat_individual_suite),
    this.iconRight = const Icon(Icons.add_a_photo),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: iconLeft,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: iconRight,
            label: 'Schools',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: brandPrimary,
        unselectedItemColor: brandSecundary,
        backgroundColor: scale_04,
        //showSelectedLabels: false,
        // showUnselectedLabels: false,
        //iconSize: 30.0,
        onTap: (index) {
          print(index);
        },
      ),
    );
  }
}
