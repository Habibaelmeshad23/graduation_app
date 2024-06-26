import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:graduation_project/config/routes/routes.dart';
import 'package:graduation_project/screens/animal_tab.dart';
import 'package:graduation_project/screens/games_tab.dart';
import 'package:graduation_project/screens/jobs_tab.dart';
import 'package:graduation_project/screens/letter_tab.dart';
import 'package:graduation_project/screens/num_tab.dart';
import 'package:graduation_project/screens/shapes_tab.dart';

class CategoryModel{
  String name;
  Color color;
  String routes;
  String image;
  CategoryModel(this.name,this.image,this.color,this.routes);


  static List<CategoryModel> getCategories(){
    return[
      CategoryModel("Numbers", "assets/images/num.jpg",Colors.white,RoutesName.numTab ),
      CategoryModel("Letters", "assets/images/Unknown.jpg",Colors.white,RoutesName.letterTab ),
      CategoryModel("Shapes", "assets/images/shapes.jpg",Colors.white,RoutesName.shapeTab ),
      CategoryModel("Animals", "assets/images/animals.jpg",Colors.white,RoutesName.animalTab ),
      CategoryModel("Games", "assets/images/game.jpg",Colors.white,RoutesName.gamesTab  ),
      CategoryModel("Jobs", "assets/images/jobs.jpg",Colors.white,RoutesName.jobTab ),

    ];
  }

}