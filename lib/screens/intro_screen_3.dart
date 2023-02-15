import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurestack/screens/login_screen.dart';

class IntroScreen3 extends StatelessWidget {
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
                    BorderRadius.only(bottomLeft: Radius.circular(0),bottomRight: Radius.circular(146))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                        "assets/images/splash3.png",
                        height: 260,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 0),
                      child: Center(
                        child: Text('Lorem isome is the...',
                            textAlign: TextAlign.end,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: GoogleFonts.rubik().fontFamily,
                                fontSize: 26,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(6, 0, 66, 0),
                        child: Text(
                            'In publishing and graphic design, Lorem ip\n'
                                'placeholder text commonly used to demonstr\n'
                                'the visual form of a document or a typeface\n'
                                'out relying on meaningful content',
                            textAlign: TextAlign.end
                            ,textDirection: TextDirection.ltr
                            ,style: TextStyle(
                          color: Colors.grey,
                          fontFamily: GoogleFonts.rubik().fontFamily,
                          fontSize: 15,
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
