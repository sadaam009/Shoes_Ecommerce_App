import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes/Components/intro_page.dart';
import 'package:shoes/Components/intro_page1.dart';
import 'package:shoes/Components/intro_page2.dart';
import 'package:shoes/Components/signup.dart';
import 'package:shoes/Components/singin.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding_screen extends StatefulWidget {
  const Onboarding_screen({super.key});

  @override
  State<Onboarding_screen> createState() => _Onboarding_screenState();
}

class _Onboarding_screenState extends State<Onboarding_screen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              Home_intro(),
              IntroPage1(),
              IntroPage3(),
            ],
          ),
          Container(
              alignment: Alignment(-0.64, 0.93),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotColor: Color.fromARGB(255, 224, 219, 219),
                      activeDotColor: Colors.blue,
                      dotHeight: 10,
                      dotWidth: 15,
                      spacing: 10,
                    ),
                  ),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Singin();
                              },
                            ));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            width: 190,
                            height: 72,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: Text(
                                "Done",
                                style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            width: 190,
                            height: 72,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: Text(
                                "Next",
                                style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                ],
              ))
        ],
      ),
    );
  }
}
