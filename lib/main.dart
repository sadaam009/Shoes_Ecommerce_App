import 'package:flutter/material.dart';
import 'package:shoes/Components/Screen.dart';
import 'package:shoes/Components/home_screen.dart';
import 'package:shoes/Components/side_navigation.dart';
import 'package:shoes/pages/details_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DetailsPage(),
  ));
}
