import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_app/utils/my_images.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  bool isTrue = false;
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 27,
          color: Colors.black,
          icon: Icon(Icons.arrow_back),onPressed:(() {
          Navigator.pop(context);
        }) ,),
        elevation: 0,
        flexibleSpace: Container(color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 25,top: 2),
              child: Text('Enter the verify code',style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.w700),),),
             Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 25, top: 10),
              child: Text("We just send you a verification code via phone\n+65 556 798 241",
              style: TextStyle(color: Colors.black45),),
             ),
             Container(
              child: TextField(
                decoration: InputDecoration(

                ),
              ),
             ),
            
              SizedBox(height: 40,),
              InkWell(
              onTap: () {
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.065,
                width: MediaQuery.of(context).size.width*0.85,
                decoration: BoxDecoration(
                  color: Color(0xFF4157FF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF4157FF),
                      offset: Offset(2,2),
                      blurRadius: 2,
                      spreadRadius: 2
                    )
                  ],
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Center(child: Text('SUBMIT CODE',style: TextStyle(fontSize:22,
                color: Colors.white),)),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.035,),
           
            Container(
              child: Text('The verify code will expire in 00:59',style: TextStyle(color: 
              Colors.black45))),
            SizedBox(height: 18),
            Container(
              child: Text('Resend Code', style: TextStyle(color: Color(0xFF4157FF)),),
            )
      
            ],))
          
        
      
      
    );
  }
}