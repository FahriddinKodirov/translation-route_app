import 'package:flutter/material.dart';
import 'package:new_app/adimPage.dart';
import 'package:new_app/home_work/creat_account.dart';
import 'package:new_app/home_work/login.dart';
import 'package:new_app/home_work/verify.dart';
import 'package:new_app/home_work/welcome.dart';
import 'package:new_app/my_home_page.dart';

abstract class RouteName{
  static const home = '/home';
  static const admin = '/admin';
  static const login = '/login';
  
}

class AppRoutes{
  static Route generateRoute(RouteSettings settings){
   switch (settings.name){
    case RouteName.home:
      return MaterialPageRoute(builder: (_) =>Verify());
    case RouteName.login:
      return MaterialPageRoute(builder: (_) => Login());
    case RouteName.admin:
      final Map args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(builder: (_) => AdminPage(
                               title:args['title'],
                               title2:args['title2'],
                               id:args['id'],));
    default:
      return MaterialPageRoute(builder: (_) => Scaffold());
   }
  }
}