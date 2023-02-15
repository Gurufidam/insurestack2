import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurestack/models/claims_model.dart';
import 'package:insurestack/models/job_card_model.dart';
import 'package:insurestack/widgets/claims_widget.dart';
import 'package:insurestack/widgets/job_card_widget.dart';

class ClaimsScreen extends StatefulWidget {
  @override
  State<ClaimsScreen> createState() => _ClaimsScreenState();
}

class _ClaimsScreenState extends State<ClaimsScreen> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    final dummyList = List.generate(12, (index) => ClaimsModel.claimsItems[0]);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 0, 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 10),
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
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: dummyList.length,
                      itemBuilder: (context, index) {
                        return ClaimsWidget(claimsItems: dummyList[index]);
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
