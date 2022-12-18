import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_app/utils/app_routes.dart';
import 'package:new_app/utils/my_images.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 60,),
          Container(
            child: Center(child: Image.asset(MyImages.doktor, width: 320,)),
          ),
          SizedBox(height: 26,),
          Container(child: Text('Welcome to Medtech',style: TextStyle(fontSize: 30,
          fontWeight: FontWeight.w700),),),
          SizedBox(height: 15,),
          Container(
            height: 18,
            child: Text('Do you want some help with your\n',style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.w400, color: Colors.black38),),),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text('health to get better life?',style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.w400, color: Colors.black38),),),
          SizedBox(height: 28,),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RouteName.login);
            },
            child: Container(
              height: MediaQuery.of(context).size.height*0.07,
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
              child: Center(child: Text('Sign up with email',style: TextStyle(fontSize:22,
              color: Colors.white),)),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: MediaQuery.of(context).size.height*0.07,
            width: MediaQuery.of(context).size.width*0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  offset: Offset(3,3),
                  blurRadius: 5,
                  spreadRadius: 5
                )
              ],
              border: Border.all(color: Colors.black26)
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60),
                  child: SvgPicture.asset(MyImages.facebook),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Continue with facebook',style: TextStyle(
                fontSize: 18),)),
              ],
            ),
          ),
           SizedBox(height: 15,),
          Container(
            height: MediaQuery.of(context).size.height*0.07,
            width: MediaQuery.of(context).size.width*0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  offset: Offset(3,3),
                  blurRadius: 5,
                  spreadRadius: 5
                )
              ],
              border: Border.all(color: Colors.black26)
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60),
                  child: SvgPicture.asset(MyImages.google),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Continue with Gmail',style: TextStyle(
                fontSize: 18),)),
                
                
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
                  child: Text('LOGIN',style: TextStyle(color: Colors.black45),),
                )
        ]),
      ),
    );
  }
}