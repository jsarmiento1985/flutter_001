import 'package:flutter/material.dart';
import 'package:flutter_001/fundation/colors.dart';
import 'package:flutter_001/fundation/our_Text.dart';

class OurAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String tittle;
  final Icon iconAppBar;

  const OurAppBar(
      {super.key,
      this.tittle = 'default',
      this.iconAppBar = const Icon(Icons.abc)});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: statusWarning,
      title: H1(text: tittle),
      actions: [
        IconButton(
          iconSize: 20,
          icon: iconAppBar,
          onPressed: () => {print("hola Mundo")},
        ),
        IconButton(
          iconSize: 20,
          icon: const Icon(Icons.navigate_next),
          onPressed: () => {print("hola Mundo next")},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
