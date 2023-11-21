import 'package:flutter/material.dart';
import 'package:flutter_001/element_view.dart';
import 'package:flutter_001/fundation/data.dart';

class OurList extends StatelessWidget {
  const OurList({super.key});

  @override
  Widget build(BuildContext context) {
    final listView = ListView(
      children: [
        for (final item in jsonData)
          ElementView(
            pathImage: item['pathImage']!,
            title: item['title']!,
            description: item['description']!,
          ),
      ],
    );

    return listView;
  }
}
