import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurestack/screens/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late double height, width;
  int selectedIndex = 0;
  final widgetOptions = [
    Text('Beer List'),
    Text('Add new beer'),
    Text('Favourites'),
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 4, 0, 10),
              child: Container(
                padding: EdgeInsets.only(top: 4,bottom: 4),
                decoration: const BoxDecoration(
                    color: Color(0xfff1f0f0),
                    borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(40))),
                child: ListTile(
                  leading: Image.asset('assets/images/tmp1.png',),
                  title: const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text("Ram Kumar", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ),
                  subtitle: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color(0xff1e3d73)),child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Image.asset('assets/images/usr_ic.png',width: 16,color: Colors.white),
                        )
                        ,Text('Basic (344 Days Remain)',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  )),
                  trailing: Image.asset('assets/images/wallet_ic.png',height:50,width: 32,alignment: Alignment.topRight),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 0, 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xfff1f0f0),
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/nav_user.png',
                      width: 60,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        "Profile Setting",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: GoogleFonts.rubik().fontFamily,fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text("Personal Info, Change Password Etc",
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 0, 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xfff1f0f0),
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 0),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Image.asset(
                        'assets/images/wallet_ic.png',
                        width: 40,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        "Wallet",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: GoogleFonts.rubik().fontFamily,fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text("Check your balance here",
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 0, 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xfff1f0f0),
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 0),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      child: Image.asset(
                        'assets/images/member_ic.png',
                        width: 46,color: Colors.black,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        "Memberships",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: GoogleFonts.rubik().fontFamily,fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text("Upgrate your cpapbilities here",
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 0, 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xfff1f0f0),
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 0),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Image.asset(
                        'assets/images/support_ic.png',
                        width: 40,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        "Request Support",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: GoogleFonts.rubik().fontFamily,fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text("We are here 24 X 7 for you",
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 0, 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xfff1f0f0),
                    borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 0),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Image.asset(
                        'assets/images/finaince_ic.png',
                        width: 40,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        "Financial Dashvoard",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: GoogleFonts.rubik().fontFamily,fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text("See your progress here",
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 0, 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xfff1f0f0),
                    borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 0),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(16,0,0,0),
                      child: Image.asset(
                        'assets/images/terms_ic.png',
                        width: 40,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        "Transection History",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: GoogleFonts.rubik().fontFamily,fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text("Check Your transections",
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
