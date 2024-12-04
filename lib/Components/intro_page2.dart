import 'package:flutter/material.dart';
import 'package:shoes/Ui_reuseable/intro_card.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 246, 249),
        body: IntroCard(
          imagePath: 'lib/images/NIKE.png',
          shoesPath: 'lib/images/shoes3.png',
          title: 'Summer Shoes Nike ',
          subtitle: 'Amet Minim Lit Nodeseru Saku Nandu sit Alique Dolor',
        ));
  }
}
