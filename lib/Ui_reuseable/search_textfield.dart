import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(left: 14, right: 14),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              // borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 17.0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: 'Looking For Shoes',
            hintStyle: const TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
      Positioned(
          right: 20,
          top: 8,
          child:
              IconButton(onPressed: () {}, icon: Icon(Iconsax.search_normal))),
    ]);
  }
}
