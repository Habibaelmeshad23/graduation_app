

import 'package:flutter/material.dart';
import 'package:graduation_project/featuers/home/presentation/pages/home.dart';
import 'package:graduation_project/featuers/login/presentation/pages/login_screen.dart';
import 'package:graduation_project/featuers/signup/presentation/pages/signup_screen.dart';
import 'package:graduation_project/screens/animal_tab.dart';
import 'package:graduation_project/screens/games_tab.dart';
import 'package:graduation_project/screens/jobs_tab.dart';
import 'package:graduation_project/screens/letter_tab.dart';
import 'package:graduation_project/screens/num_tab.dart';
import 'package:graduation_project/screens/profile/profile_tab.dart';
import 'package:graduation_project/screens/settings/settings_tab.dart';
import 'package:graduation_project/screens/shapes_tab.dart';

import '../../video_player_widget.dart';

class RoutesName{
  static const String login="/";
  static const String signup="signup";
  static const String profile="Profile";
  static const String home="Home";
  static const String settings="Settings";
  static const String animalTab="AnimalTab";
  static const String gamesTab="GamesTab";
  static const String jobTab="JobsTab";
  static const String letterTab="LettersTab";
  static const String numTab="NumbersTab";
  static const String shapeTab="ShapesTab";
  static const String videoTab="VideoPlayerWidget";




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
      case RoutesName.numTab:
        return MaterialPageRoute(builder: (context) => NumbersTab());
      case RoutesName.letterTab:
        return MaterialPageRoute(builder: (context) => LettersTab());
      case RoutesName.shapeTab:
        return MaterialPageRoute(builder: (context) => ShapesTab());
      case RoutesName.animalTab:
        return MaterialPageRoute(builder: (context) => AnimalsTab());
      case RoutesName.gamesTab:
        return MaterialPageRoute(builder: (context) => GamesTab());
      case RoutesName.jobTab:
        return MaterialPageRoute(builder: (context) => JobsTab());
      case RoutesName.videoTab:
        return MaterialPageRoute(builder: (context) => VideoPlayerWidget());







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