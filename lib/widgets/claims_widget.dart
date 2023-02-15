import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/claims_model.dart';

class ClaimsWidget extends StatelessWidget {
  final ClaimsItem claimsItems;

  const ClaimsWidget({Key? key, required this.claimsItems}) : super(key: key);

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
          leading: Image.asset(claimsItems.image, height: 40),
          title: Text(claimsItems.name,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.rubik().fontFamily)),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 0),
                child: Text(' ${claimsItems.price} INR',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: GoogleFonts.rubik().fontFamily,color: Colors.red,fontWeight: FontWeight.bold
                    )),
              ),
              Row(
                children: [
                  Image.asset('assets/images/usr_ic.png',
                      width: 14, color: Colors.grey),
                  Text('  ${claimsItems.userName}',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: GoogleFonts.rubik().fontFamily,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/images/car_ic.png',
                      width: 16, color: Colors.grey),
                  Text('  ${claimsItems.carName} (${claimsItems.type})',
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
