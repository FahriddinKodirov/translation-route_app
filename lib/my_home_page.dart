import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_app/utils/app_routes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'salom';
  String title2 = 'qalay';
  int id = 20;
  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(height: 30,),
        Center(child: Text('first_name'.tr(), style: TextStyle(fontSize: 30),)),
        SizedBox(height: 30,),
        Center(child: Text('last_name'.tr(), style: TextStyle(fontSize: 30),)),
        SizedBox(height: 30,),
        Center(child: Text('age'.tr(), style: TextStyle(fontSize: 30),)),
        SizedBox(height: 30,),
        RadioListTile(value: 1, 
                      title: Text('Russian'),
                      groupValue: index, 
                      onChanged: ((value) {
                        setState(() {
                          index = value as int;
                          context.setLocale(Locale("ru", "RU"));
                        });
                      })),
        RadioListTile(value: 2, 
                      title: Text('Uzbek'),
                      groupValue: index, 
                      onChanged: ((value) {
                        setState(() {
                          index = value as int;
                          context.setLocale(Locale("uz", "UZ"));
                        });
                      })),
        RadioListTile(value: 3, 
                      title: Text('English'),
                      groupValue: index, 
                      onChanged: ((value) {
                        setState(() {
                          index = value as int;
                          context.setLocale(Locale("en", "US"));
                        });
                      })),
      ],),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
        Navigator.pushNamed(context, RouteName.admin, 
        arguments: {
          'title': 'title',
          'title2': 'title2',
          'id': 20,
        });
      },),
    );
  }
}
