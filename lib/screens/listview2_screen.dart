import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const["Megaman", "Metal Gear", "Super Smash", "Final Fantasy"];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview tipo 2"),
        elevation: 0,
        backgroundColor: Colors.amber,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (_, index) => ListTile(
          onTap: () {
            // final game = options[index];
            
          },
          title: Text(options[index]), 
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.amber,),
        ),
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}