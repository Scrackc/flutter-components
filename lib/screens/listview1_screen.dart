import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const["Megaman", "Metal Gear", "Super Smash", "Final Fantasy"];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview tipo 1"),

      ),
      body: ListView(
        children: [

          ...options.map((e) => ListTile(title: Text(e), trailing: const Icon(Icons.arrow_forward_ios_outlined),)),
          const Divider()

          // ListTile(
          //   title: Text("Option 1"),
          //   leading: Icon(Icons.star),
          // )
        ],
      ),
    );
  }
}