

import 'package:flutter/material.dart';
import 'package:graduation_project/featuers/home/presentation/pages/home.dart';
import 'package:graduation_project/featuers/login/presentation/pages/login_screen.dart';
import 'package:graduation_project/featuers/signup/presentation/pages/signup_screen.dart';
import 'package:graduation_project/screens/profile/profile_tab.dart';
import 'package:graduation_project/screens/settings/settings_tab.dart';

class RoutesName{
  static const String login="/";
  static const String signup="signup";
  static const String profile="Profile";
  static const String home="Home";
  static const String settings="Settings";

}

class AppRouter{
  static Route onGenerate(RouteSettings settings){
    switch(settings.name){
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RoutesName.signup:
        return MaterialPageRoute(builder: (context) => SignupScreen());
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.profile:
        return MaterialPageRoute(builder: (context) => ProfileTab());
      case RoutesName.settings:
        return MaterialPageRoute(builder: (context) => SettingsTab());

      default:
        return MaterialPageRoute(builder: (context) => unDefineRoute());
    }
  }
  static Widget unDefineRoute(){
    return Scaffold(
      appBar: AppBar(
        title: Text("UnDefine Route"),
      ),
      body: Center(
        child: Text("Route Not found"),
      ),
    );
  }
}