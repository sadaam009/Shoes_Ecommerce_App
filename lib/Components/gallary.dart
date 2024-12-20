import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gallary extends StatelessWidget {
  const Gallary({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gallery",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 236, 236),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "lib/images/shoesnike.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 236, 236),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "lib/images/shoespuma.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 236, 236),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "lib/images/shoes5.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
