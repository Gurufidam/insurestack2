import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurestack/screens/login_screen.dart';

class ServicesScreen extends StatefulWidget {
  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  late double height, width;
  int selectedIndex = 0;

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
            Image.asset('assets/images/tmp.png'),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 10),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 22.0),
                        child: Image.asset(
                          'assets/images/search_ic.png',
                          width: 20,
                        ),
                      ),
                      hintText: 'Search Here',
                      hintStyle: const TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Center(
                child: GridView.extent(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              maxCrossAxisExtent: 180.0,
              childAspectRatio: 1.16,
              children: <Widget>[
                Card(
                  color: Colors.white,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                            child: Image.asset(
                                'assets/images/create_job_card.png')),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Text(
                            'Create Job Card',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: GoogleFonts.rubik().fontFamily,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  )),
                ),
                Card(
                  color: Colors.white,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                            child: Image.asset(
                                'assets/images/schedule_pickup.png')),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Text(
                            'Schedule Pickup',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: GoogleFonts.rubik().fontFamily,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  )),
                ),
                Card(
                  color: Colors.white,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                            child:
                                Image.asset('assets/images/manage_claims.png')),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Text(
                            'Manage Claims',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: GoogleFonts.rubik().fontFamily,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  )),
                ),
                Card(
                  color: Colors.white,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                            child:
                                Image.asset('assets/images/manage_parts.png')),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Text(
                            'Manage Parts',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: GoogleFonts.rubik().fontFamily,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  )),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
