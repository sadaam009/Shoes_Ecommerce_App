import 'package:flutter/material.dart';

class Textfields extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final bool currenttext;

  const Textfields({
    super.key,
    required this.controller,
    required this.currenttext,
    required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: controller,
            obscureText:
                currenttext, // Ensures the `currenttext` behavior is applied
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.grey.shade300, width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: hinttext,
              hintStyle: const TextStyle(
                fontSize: 17.0, // Set the font size
                color: Colors.grey, // Change the text color
                fontStyle: FontStyle.italic, // Make the text italic
              ),
            ),
          ),
        ),
      ],
    );
  }
}
