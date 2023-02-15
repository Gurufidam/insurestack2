import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurestack/models/notification_model.dart';
import 'package:insurestack/models/parts_model.dart';

import '../models/job_card_model.dart';

class NotificationWidget extends StatefulWidget {
  final Notifications notifications;

  const NotificationWidget({Key? key, required this.notifications}) : super(key: key);

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xfff1f0f0),
            borderRadius: BorderRadius.horizontal(left: Radius.circular(40))),
        padding: EdgeInsets.fromLTRB(0, 2, 6, 2),
        child: ListTile(
          leading: Image.asset(widget.notifications.image, height: 60),
          title: Text(widget.notifications.title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.rubik().fontFamily)),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 0),
                child: Text(' ${widget.notifications.dateTime.toString()} ',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: GoogleFonts.rubik().fontFamily,
                    )),
              ),
              Text('  ${widget.notifications.description}',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: GoogleFonts.rubik().fontFamily,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
