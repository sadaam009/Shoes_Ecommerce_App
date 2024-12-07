import 'package:flutter/material.dart';

class TextfieldPassword extends StatefulWidget {
  const TextfieldPassword({super.key});

  @override
  State<TextfieldPassword> createState() => _TextfieldPasswordState();
}

class _TextfieldPasswordState extends State<TextfieldPassword> {
  bool ispasswordvisable = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 14),
      child: TextField(
        obscureText: !ispasswordvisable,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: 'Password',
          hintStyle: const TextStyle(
            fontSize: 17.0,
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
          suffix: IconButton(
            onPressed: () {
              setState(() {
                ispasswordvisable = !ispasswordvisable;
              });
            },
            icon: Icon(
              ispasswordvisable ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
