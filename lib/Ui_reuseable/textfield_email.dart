import 'package:flutter/material.dart';

class TextfieldEmail extends StatelessWidget {
  const TextfieldEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 14),
      child: TextField(
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
          hintText: 'Email',
          hintStyle: const TextStyle(
            fontSize: 17.0,
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
