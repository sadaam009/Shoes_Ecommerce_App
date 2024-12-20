import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoes/Components/gallary.dart';
import 'package:shoes/Ui_reuseable/header_bar.dart';
import 'package:shoes/Ui_reuseable/shoes_size_ui.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
                height: 350,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 243, 246, 249)),
                child: ListView(
                  children: [
                    HeaderBar(
                      arraw_icon: Icons.arrow_back_ios,
                      text_header: "Mens' Shoes",
                      Shopping: Iconsax.shopping_bag,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Image.asset(
                        'lib/images/shoesmen.png',
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 14,
            ),
            // Shoes Details
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BEST SELLER",
                    style:
                        GoogleFonts.poppins(color: Colors.blue, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Nike Air Jordan",
                    style: GoogleFonts.poppins(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "1,000",
                    style: GoogleFonts.poppins(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Air Jordan is an American brand of basketball \n shoes  athletic, casual, and style clothing\n produced by Nike....",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Color.fromARGB(255, 112, 123, 129)),
                  )
                ],
              ),
            ),
            Gallary(),
          ],
        ),
      ),
    );
  }
}
