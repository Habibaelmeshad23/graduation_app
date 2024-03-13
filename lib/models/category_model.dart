import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryModel{
  String name;
  Color color;

  String image;
  CategoryModel(this.name,this.image,this.color);


  static List<CategoryModel> getCategories(){
    return[
      CategoryModel("Numbers", "assets/images/num.jpg",Colors.white ),
      CategoryModel("Letters", "assets/images/Unknown.jpg",Colors.white),
      CategoryModel("Shapes", "assets/images/shapes.jpg",Colors.white),
      CategoryModel("Animals", "assets/images/animals.jpg",Colors.white),
      CategoryModel("Games", "assets/images/game.jpg",Colors.white),
      CategoryModel("Jobs", "assets/images/jobs.jpg",Colors.white),

    ];
  }

}