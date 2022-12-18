import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_app/utils/my_images.dart';

class CreatAccount extends StatefulWidget {
  const CreatAccount({super.key});

  @override
  State<CreatAccount> createState() => _CreatAccountState();
}

class _CreatAccountState extends State<CreatAccount> {
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
              padding: EdgeInsets.only(left: 18,top: 2),
              child: Text('Create your account',style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.w700),),),
                SizedBox(height: 10,),
            Form(
              key: formkey,
              child:
             Column(children: [
               Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                 decoration: InputDecoration(
                  labelText: 'Your Name',
                 ),
                 
                ),
              ),
              SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  
                 ),
                 
                ),
              ),
      
              SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                 decoration: InputDecoration(
                  hintText: 'Email',
                 ),
                 
                ),
              ),
              SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                 obscureText: isTrue,
                 decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: isTrue?IconButton(icon: Icon(Icons.visibility_off),
                  onPressed: (){
                    setState(() {
                      isTrue = !isTrue;
                    });
                  },):IconButton(icon: Icon(Icons.visibility),
                  onPressed: (){
                    setState(() {
                      isTrue = !isTrue;
                    });
                  },)
                  
                 
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
                child: Center(child: Text('CREATE ACCOUNTr',style: TextStyle(fontSize:22,
                color: Colors.white),)),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.28,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(Icons.arrow_back_ios,size: 15,),
                ),
                Container(
                  child: Text('Already have account?  Login'),),
              ],
            )
      
            ],))
          ],
        ),
      ),
      
    );
  }
}