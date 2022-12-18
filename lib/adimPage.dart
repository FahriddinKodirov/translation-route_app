import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdminPage extends StatelessWidget {
  String title;
  String title2;
  int id;
  AdminPage({super.key,
            required this.title,
            required this.title2,
            required this.id,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(color: Colors.amber,),
     
    );
  }
}