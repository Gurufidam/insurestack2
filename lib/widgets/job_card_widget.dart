import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurestack/models/parts_model.dart';

import '../models/job_card_model.dart';

class JobCardWidget extends StatefulWidget {
  final JobCardItem jobCardItems;

  const JobCardWidget({Key? key, required this.jobCardItems}) : super(key: key);

  @override
  State<JobCardWidget> createState() => _JobCardWidgetState();
}

class _JobCardWidgetState extends State<JobCardWidget> {
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
          leading: Image.asset(widget.jobCardItems.image, height: 60),
          title: Text(widget.jobCardItems.name,
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
                child: Text(' ${widget.jobCardItems.price} INR',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: GoogleFonts.rubik().fontFamily,color: Colors.red,fontWeight: FontWeight.bold
                    )),
              ),
              Row(
                children: [
                  Image.asset('assets/images/usr_ic.png',
                      width: 14, color: Colors.grey),
                  Text('  ${widget.jobCardItems.userName}',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: GoogleFonts.rubik().fontFamily,
                      )),
                  const SizedBox(
                    width: 16,
                  ),
                  Image.asset('assets/images/car_ic.png',
                      width: 16, color: Colors.grey),
                  Text('  ${widget.jobCardItems.carName} (${widget.jobCardItems.type})',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: GoogleFonts.rubik().fontFamily)),
                ],
              ),
            ],
          ),
          trailing: Image.asset('assets/images/edit_ic.png',
              height: 50, width: 18, alignment: Alignment.topRight),
        ),
      ),
    );
  }
}
