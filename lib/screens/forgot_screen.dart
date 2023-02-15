import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurestack/screens/dashboard_screen.dart';

class ForgotScreen extends StatelessWidget {
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
                height: height / 1.16,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.white]),
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(156))),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo1.png',
                      height: 120,
                      width: 220,
                    ),
                    Image.asset(
                      "assets/images/splash2.png",
                      width: 280,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 32, horizontal: 0),
                      child: Text('Forgot Password',
                          style: TextStyle(
                              fontFamily: GoogleFonts.rubik().fontFamily,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 8, 24, 10),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            prefixIcon:
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 20.0),
                              child: Image.asset('assets/images/email_ic2.png',width: 28,),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                                borderSide:
                                BorderSide(color: Colors.grey, width: 0.0,style: BorderStyle.none)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                )),
                            hintText: 'Email Address',hintStyle: TextStyle(fontSize: 20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 48, horizontal: 16),
                      child: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.fromLTRB(0, 6, 10, 0),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child:ElevatedButton.icon(
                            onPressed: (){
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const DashboardScreen()));
                            },
                            label: Padding(
                              padding: const EdgeInsets.fromLTRB(70.0, 8.0, 40.0, 8.0),
                              child: Text("Login",textAlign: TextAlign.right,style: TextStyle(
                                  fontFamily: GoogleFonts.rubik().fontFamily,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                            ),
                            //label text
                            icon: Padding(
                              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0),
                              child: Image.asset('assets/images/right_arrow.png',height: 24,alignment: Alignment.centerRight,color: Colors.white,width: 30),
                            ),  //icon data for elevated button


                            style: ElevatedButton.styleFrom(padding: const EdgeInsets.fromLTRB(20, 8, 20, 8), shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                primary: Color(0xff1e3d73) //elevated btton background color
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
              ,Flexible(
                  flex: 15,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 0.0),
                        child: Text('Version:1.5.3',style: TextStyle(fontSize: 20,color: Colors.white),),
                      )
                  )
              ),
            ],
          ),
        ));
  }
}
