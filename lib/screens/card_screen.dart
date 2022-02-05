import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  //https://jooinn.com/images/landscape-285.jpg
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 20,),
            CustomCardType2(imageUrl: 'https://picsum.photos/600/400?random=1', name: 'Un Hermoso Paisaje'),
            SizedBox(height: 20,),
            CustomCardType2(imageUrl: 'https://picsum.photos/600/400?random=2', name: null,),
            SizedBox(height: 10,),
            CustomCardType2(imageUrl: 'https://picsum.photos/600/400??random=3'),
            SizedBox(height: 100,)
          ],
        ));
  }
}

