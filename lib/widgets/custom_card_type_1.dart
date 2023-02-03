import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:app_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
            subtitle: Text(
                "Dolor magna consectetur id aute minim irure id voluptate qui adipisicing pariatur. Incididunt est exercitation culpa velit sint qui proident. Deserunt incididunt voluptate esse incididunt proident occaecat ut dolore amet id.", textAlign: TextAlign.justify,),
            title: Text("Soy un titulo"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Ok"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
