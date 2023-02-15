import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurestack/models/notification_model.dart';
import 'package:insurestack/screens/claims_screen.dart';
import 'package:insurestack/screens/job_card_screen.dart';
import 'package:insurestack/screens/parts_screen.dart';
import 'package:insurestack/screens/profile_screen.dart';
import 'package:insurestack/screens/services_screen.dart';
import 'package:insurestack/widgets/notification_widget.dart';

class NotificationScreen extends StatefulWidget {
  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late double height, width;
  int _selectedItem = 0;
  final widgetOptions = [
    Text('Beer List'),
    Text('Add new beer'),
    Text('Favourites'),
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    final dummyList =
        List.generate(12, (index) => NotificationModel.notifications[0]);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          title: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/logo1.png'),
              iconSize: width / 2,
              alignment: Alignment.center),
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: IconButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  } else {
                    SystemNavigator.pop();
                  }
                },
                icon: Image.asset('assets/images/left_icon.png')),
          ),
          backgroundColor: Colors.white,
          elevation: 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text('Notifications',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.rubik().fontFamily),
                      textAlign: TextAlign.center)),
            )),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 8),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: dummyList.length,
                  itemBuilder: (context, index) {
                    return NotificationWidget(notifications: dummyList[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
