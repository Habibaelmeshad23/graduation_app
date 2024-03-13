import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/config/routes/routes.dart';
import 'package:graduation_project/config/theming/light.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      onGenerateRoute: (setting) => AppRouter.onGenerate(setting),
    );
  }
}