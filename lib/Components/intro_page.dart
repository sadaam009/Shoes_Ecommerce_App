import 'package:flutter/material.dart';
import 'package:shoes/Ui_reuseable/intro_card.dart';

class Home_intro extends StatelessWidget {
  const Home_intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 246, 249),
        body: IntroCard(
          imagePath: 'lib/images/NIKE.png',
          shoesPath: 'lib/images/shoes2.png',
          title: 'Start Journey With Nike',
          subtitle: 'Smart, Gorgeous & Fashionable Collection',
        ));
  }
}
