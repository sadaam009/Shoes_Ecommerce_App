import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderBar extends StatelessWidget {
  final IconData? arraw_icon;
  final String? text_header;
  final IconData? Shopping;
  const HeaderBar({Key? key, this.arraw_icon, this.Shopping, this.text_header});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          ListTile(
            minLeadingWidth: 90.0,
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(onPressed: () {}, icon: Icon(arraw_icon)),
            ),
            title: Text(
              text_header.toString(),
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(onPressed: () {}, icon: Icon(Shopping)),
            ),
          )
        ],
      ),
    );
  }
}
