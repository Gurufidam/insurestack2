import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurestack/screens/claims_screen.dart';
import 'package:insurestack/screens/job_card_screen.dart';
import 'package:insurestack/screens/login_screen.dart';
import 'package:insurestack/screens/notificaiton_screen.dart';
import 'package:insurestack/screens/parts_screen.dart';
import 'package:insurestack/screens/profile_screen.dart';
import 'package:insurestack/screens/services_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late double height, width;
  int _selectedItem = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  var _pagesData = [
    ServicesScreen(),
    PartsScreen(),
    JobCardScreen(),
    ClaimsScreen(),
    ProfileScreen()
  ];
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
      key: _key,
      appBar: AppBar(actions: [
        IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: Image.asset('assets/images/nav_ic.png'),
          padding: EdgeInsets.fromLTRB(14, 2, 4, 0),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/images/logo1.png'),
          iconSize: width / 1.4,
        ),
        IconButton(
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => NotificationScreen()));
          },
          icon: Image.asset('assets/images/noti_ic.png'),
          padding: EdgeInsets.fromLTRB(0, 14, 12, 14),
        ),
      ], backgroundColor: Colors.white, elevation: 0),
      body: Center(child: _pagesData[_selectedItem]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,// Fixed<-- This works for fixed
        selectedItemColor: Color(0xff9d191e),
        unselectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(color: Colors.yellow),
        unselectedIconTheme:  const IconThemeData(color: Colors.white),
        unselectedFontSize: 16,
        selectedFontSize: 16,
        iconSize: 30,
        selectedLabelStyle:
            const TextStyle(height: 1.8, fontSize: 14, color: const Color(0xff9d191e),fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 14,
            height: 1.8),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/services_ic.png', width: 32),
              activeIcon: Image.asset('assets/images/services_ic.png', width: 32,color: const Color(0xff9d191e)),
              label: 'Services'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/parts_ic.png', width: 34,color: Colors.black),
              activeIcon: Image.asset('assets/images/parts_ic.png', width: 34,color: const Color(0xff9d191e)),
              label: 'Parts',),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/job_card.png', width: 32),
              activeIcon: Image.asset('assets/images/job_card.png', width: 32,color: const Color(0xff9d191e)),
              label: 'Job Card'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/claim_ic.png', width: 32),
              activeIcon: Image.asset('assets/images/claim_ic.png', width: 32,color: const Color(0xff9d191e)),
              label: 'Claims'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/profile_ic.png', width: 32),
              activeIcon: Image.asset('assets/images/profile_ic.png', width: 32,color: const Color(0xff9d191e)),
              label: 'Profile'),
        ],
        currentIndex: _selectedItem,
        onTap: (setValue) {
          setState(() {
            _selectedItem = setValue;
          });
        },
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: SafeArea(
          child: Drawer(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only( topRight: Radius.circular(50),
                bottomRight: Radius.circular(50))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: 100,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          color: Color(0xff1e3d73)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  ' Ram Kumar',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.start,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/usr_ic.png',
                                          width: 16, color: Colors.white),
                                      SizedBox(width: 10),
                                      Text(
                                        'Basic (344 Days Remain)',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily:
                                                GoogleFonts.rubik().fontFamily),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/images/wallet_ic.png',
                                        width: 18, color: Colors.white),
                                    const SizedBox(width: 10),
                                    Text(
                                      '15000 INR',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily:
                                              GoogleFonts.rubik().fontFamily),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Card(
                                  shape: const CircleBorder(),
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Image.asset('assets/images/tmp1.png'),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0,left: 0,top: 10,bottom: 0),
                      child: ListTile(
                        horizontalTitleGap: -4,
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        leading: Image.asset(
                          'assets/images/nav_user.png',
                          width: 22,
                        ),
                        title: const Text('Users',
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    ListTile(
                      horizontalTitleGap: -4,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        'assets/images/nav_parts.png',
                        width: 22,
                      ),
                      title: const Text('Parts Inventory',
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      horizontalTitleGap: -4,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        'assets/images/nav_service.png',
                        width: 22,color: Colors.black,
                      ),
                      title: const Text('Services',
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      horizontalTitleGap: -4,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        'assets/images/nav_veh.png',
                        width: 22,
                      ),
                      title: const Text('Vehicles',
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      horizontalTitleGap: -4,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        'assets/images/nav_settings.png',
                        width: 22,
                      ),
                      title: const Text('Settings',
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      horizontalTitleGap: -4,
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        'assets/images/nav_logout.png',
                        width: 22,
                      ),
                      title: const Text('Logout',
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal:0.0,vertical: 16.0),
                      child:Container(
                        height:1.0,
                        color:Colors.grey,),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                      child: Text('About Us',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                      child: Text('Terms & Conditions',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                      child: Text('Privacy Policy',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                      child: Text(
                        'Contact Us',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 16),
                  child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(50),right: Radius.circular(50)),
                          color: Color(0xff1e3d73)),
                      child: const Text('Rate Us',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
