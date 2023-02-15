import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'intro_screen_2.dart';

class IntroScreen1 extends StatelessWidget {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xff1e3d73),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: width,
                height: height / 1.26,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.white]),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(156))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Center(
                        child: Image.asset(
                          'assets/images/logo1.png',
                          height: 120,
                          width: 220,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 32),
                      child: Image.asset(
                        "assets/images/splash1.png",
                        height: 280,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,6,56,10),
                        child: Text('Lorem isome is the....',
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontFamily: GoogleFonts.rubik().fontFamily,
                                fontSize: 22,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(62, 4, 0, 0),
                      child: Text(textDirection: TextDirection.ltr,
                          'In publishing and graphic design, Lorem ipsum'
                              ' placeholder text commonly used to demonstr \n'
                              'the visual form of a document or a typeface\nout relying on meaningful content',
                         style: TextStyle(
                           color: Colors.grey,
                            fontFamily: GoogleFonts.rubik().fontFamily,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          )),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
