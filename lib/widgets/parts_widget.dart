import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurestack/models/parts_model.dart';

class PartsWidget extends StatelessWidget {
  final PartsItem partsItems;

  const PartsWidget({Key? key, required this.partsItems}) : super(key: key);

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
          leading: Image.asset(partsItems.image, height: 60),
          title: Text(partsItems.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: GoogleFonts.rubik().fontFamily)),
          subtitle: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
              children: [
                Text('Quality: ${partsItems.quantity}',style: TextStyle(fontSize: 14,fontFamily: GoogleFonts.rubik().fontFamily)),
                SizedBox(
                  width: 16,
                ),
                Text('Price: ${partsItems.price} INR',style: TextStyle(fontSize: 14,fontFamily: GoogleFonts.rubik().fontFamily)),
              ],
            ),
          ),
          trailing: Image.asset('assets/images/edit_ic.png',
              height: 50, width: 18, alignment: Alignment.topRight),
        ),
      ),
    );
  }
}
