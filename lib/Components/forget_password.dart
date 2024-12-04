import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes/Ui_reuseable/labeltext.dart';
import 'package:shoes/Ui_reuseable/textfield_email.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 246, 249),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 325),
            child: Container(
              width: 200,
              height: 50,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Recovery Password",
                    style: GoogleFonts.poppins(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                      "Please Enter Your Email Address To \n Recieve a Verification Code",
                      style: GoogleFonts.poppins(
                          fontSize: 19,
                          color: Color.fromARGB(255, 112, 123, 129)))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          // < ---   // Container Textfleids ----->
          Labeltext(Textlabel: "Email Address"),
          SizedBox(
            height: 20,
          ),
          // Text Field Email
          TextfieldEmail(),
          // Text Field Email

          SizedBox(
            height: 40,
          ),

          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: 300,
            height: 56,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 91, 158, 225),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "Continue",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
