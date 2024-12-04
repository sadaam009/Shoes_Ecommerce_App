import 'package:flutter/material.dart';
import 'package:shoes/Ui_reuseable/intro_card.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 246, 249),
        body: IntroCard(
          imagePath: 'lib/images/NIKE.png',
          shoesPath: 'lib/images/shoesp.png',
          // imageShape: 'lib/images/shape.png',
          title: 'Follow Latest Style Shoes',
          subtitle:
              'There Are Many Beautiful And Attractive Plants To Your Room',
        ));
  }
}
