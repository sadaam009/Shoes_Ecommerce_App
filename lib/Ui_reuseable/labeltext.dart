import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Labeltext extends StatelessWidget {
  final String Textlabel;
  const Labeltext({
    Key? key,
    required this.Textlabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        Textlabel,
        style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
