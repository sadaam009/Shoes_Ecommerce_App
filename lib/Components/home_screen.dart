import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoes/Components/header.dart';
import 'package:shoes/Components/side_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Header(),
      ),
    );
  }
}
