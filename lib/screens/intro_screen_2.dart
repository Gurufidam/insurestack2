import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'intro_screen_3.dart';

class IntroScreen2 extends StatelessWidget {
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
                    BorderRadius.only(bottomLeft: Radius.circular(116),bottomRight: Radius.circular(116))),
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
                        "assets/images/splash2.png",
                        height: 280,
                      ),
                    ),
                    Center(
                       child: Text('Lorem isome is the',
                            style: TextStyle(
                                fontFamily: GoogleFonts.rubik().fontFamily,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                      ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                      child: Center(
                        child: Text(
                            'In publishing and graphic design, Lorem ipsum\n'
                                ' placeholder text commonly used to demonstr \n'
                                'the visual form of a document or a typeface\nout relying on meaningful content',
                            textAlign: TextAlign.center
                            ,style: TextStyle(
                              color: Colors.grey,
                              fontFamily: GoogleFonts.rubik().fontFamily,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
