import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroCard extends StatelessWidget {
  final String? imagePath;
  // final String? imageShape;
  final String? shoesPath;
  final String? title;
  final String? subtitle;
  final double? fontsize;

  const IntroCard(
      {Key? key,
      this.imagePath,
      // this.imageShape,
      this.shoesPath,
      this.title,
      this.subtitle,
      this.fontsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 500,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        imagePath ?? 'assets/default_background.png',
                        width: 500,
                      ),
                    ),
                    Positioned(
                      top: 140,
                      child: Image.asset(
                        shoesPath ?? 'assets/default_shoes.png',
                        fit: BoxFit.cover,
                        width: 390,
                      ),
                    ),
                    // Positioned(
                    //   top: 295,
                    //   right: 16,
                    //   child: Image.asset(
                    //     imageShape ?? 'assets/default_shoes.png',
                    //     fit: BoxFit.cover,
                    //     width: 190,
                    //   ),
                    // ),
                    Positioned(
                      left: 60,
                      bottom: 370,
                      child: Container(
                        width: 16,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue[300]),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      bottom: 20,
                      child: Container(
                        width: 16,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue[300]),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 70,
                      child: Container(
                        width: 16,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue[300]),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 7),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? 'Default Title',
                      style: GoogleFonts.poppins(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      subtitle ?? 'Default Subtitle',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        color: const Color.fromARGB(255, 112, 123, 129),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
