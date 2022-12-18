import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_app/adimPage.dart';
import 'package:new_app/my_home_page.dart';
import 'package:new_app/utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
  path: 'assets/translations',
  supportedLocales: [
    Locale("en", "US"),
    Locale("uz", "Uz"),
    Locale("ru", "RU"),
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     localizationsDelegates: context.localizationDelegates,
     supportedLocales: context.supportedLocales,
     locale: context.locale,
     debugShowCheckedModeBanner: false,
     initialRoute: RouteName.home,
     onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}

