import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurestack/screens/intro_screen_1.dart';
import 'package:insurestack/screens/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intro_screen_2.dart';
import 'intro_screen_3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  var btnText = 'Continue';
  int pagePosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (value) => {
            setState(() {
              pagePosition = value;
              if (value == 2)
                btnText = 'Signup';
              else
                btnText = 'Continue';
            })
          },
          children: [
            IntroScreen1(),
            IntroScreen2(),
            IntroScreen3(),
          ],
        ),
        Container(
            height: MediaQuery.of(context).size.height / 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      spacing: 8.0,
                      radius: 4.0,
                      dotWidth: 40.0,
                      dotHeight: 8.0,
                      expansionFactor: 2.0,
                      dotColor: Colors.indigo,
                      activeDotColor: Color(0xffe92327)),
                ),
                Flexible(
                    flex: 20,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 32, horizontal: 2),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  if (pagePosition != 2) {
                                    _controller.nextPage(
                                        duration: const Duration(microseconds: 500),
                                        curve: Curves.easeInSine);
                                  } else {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                LoginScreen()));
                                  }
                                },
                                label: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      100.0, 8.0, 60.0, 8),
                                  child: Text("$btnText",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.rubik().fontFamily,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                                //label text
                                icon: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 0.0, 0.0, 0),
                                  child: Image.asset(
                                      'assets/images/right_arrow.png',
                                      height: 24,
                                      alignment: Alignment.centerRight,
                                      width: 30),
                                ), //icon data for elevated button

                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size.fromHeight(50),
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    primary: Colors
                                        .white //elevated btton background color
                                    ),
                              ),
                            ),
                          ),
                        ))),
              ],
            ))
      ],
    ));
  }
}
