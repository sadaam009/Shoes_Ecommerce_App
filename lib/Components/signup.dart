import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes/Components/signup.dart';
import 'package:shoes/Components/singin.dart';
import 'package:shoes/Ui_reuseable/labeltext.dart';
import 'package:shoes/Ui_reuseable/textfiel_name.dart';
import 'package:shoes/Ui_reuseable/textfield.dart';
import 'package:shoes/Ui_reuseable/textfield_email.dart';
import 'package:shoes/Ui_reuseable/textfield_password.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 246, 249),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 332),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 5)
                  ], // Optional for shadow effect
                ),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 24, // Adjusted icon size
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Text(
                  "Create Account",
                  style: GoogleFonts.poppins(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text("Let’s Create Account Together",
                    style: GoogleFonts.poppins(
                        fontSize: 19,
                        color: Color.fromARGB(255, 112, 123, 129)))
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          //Label TExt
          Labeltext(Textlabel: "Name"),
          //Label TExt
          SizedBox(
            height: 15,
          ),
          // NameTextfield
          TextfielName(),
          // NameTextfield

          SizedBox(height: 15),
          // Text Label
          Labeltext(
            Textlabel: "Email Address",
          ),
          // Text Label
          SizedBox(height: 15),

          // TextField Email
          TextfieldEmail(),
          // TextField Email

          SizedBox(height: 15),

          // label Text Password
          Labeltext(
            Textlabel: "Password",
          ),
          // label Text Password

          SizedBox(height: 15),
          //  //TextField Password
          TextfieldPassword(),
          //TextField Password

          SizedBox(height: 35),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: 300,
            height: 56,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 91, 158, 225),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "Sign In", // Fixed typo from "SingIn"
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: 300,
            height: 56,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/images/googleicon.png',
                    width: 36,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Sign In With Google", // Fixed typo from "SingIn"
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: GoogleFonts.poppins(
                    fontSize: 15, color: Color.fromARGB(255, 112, 123, 129)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Singin();
                      },
                    ));
                  },
                  child: Text(
                    "Sign In ",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
