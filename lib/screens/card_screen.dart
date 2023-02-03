import 'package:flutter/material.dart';

import 'package:app_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card widtged"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const[
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://images.squarespace-cdn.com/content/v1/59523d5c4c8b031b6d9dcb5b/1645865436351-NF1WX4AHJUE43OZ3GJCY/_S6A1420-Edit-Edit.jpg?format=2500w'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2zksAe8XuLmBn9ODBO2BJ6k-zShw7BboOm2W2rcr6XfNC8wGStJ9vOZSz-RrezUJxgIo&usqp=CAU',
              text: 'Paisaje 2'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://siroccolandscapes.ca/wp-content/uploads/2021/03/Website-header.jpg',
          ),
          SizedBox(
            height: 50,
          ),

        ],
      ),
    );
  }
}


