import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/config/routes/routes.dart';
import 'package:graduation_project/screens/animal_tab.dart';
import 'package:graduation_project/screens/num_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import '../items/category_item.dart';
import '../models/category_model.dart';

class CategoriesTab extends StatelessWidget {
  CategoriesTab(List<CategoryModel> categories);

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories=[
      CategoryModel(AppLocalizations.of(context)!.numbers, "assets/images/num.jpg",Colors.white,RoutesName.numTab ),
      CategoryModel(AppLocalizations.of(context)!.letters, "assets/images/Unknown.jpg",Colors.white,RoutesName.letterTab ),
      CategoryModel(AppLocalizations.of(context)!.shapes, "assets/images/shapes.jpg",Colors.white,RoutesName.shapeTab ),
      CategoryModel(AppLocalizations.of(context)!.animals, "assets/images/animals.jpg",Colors.white,RoutesName.animalTab ),
      CategoryModel(AppLocalizations.of(context)!.games, "assets/images/game.jpg",Colors.white,RoutesName.gamesTab  ),
      CategoryModel(AppLocalizations.of(context)!.jobs, "assets/images/jobs.jpg",Colors.white,RoutesName.jobTab ),

    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Expanded(
          child: GridView(gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
          mainAxisSpacing: 12,crossAxisSpacing: 12),
          children:categories.map((cat) => CategoryItem(cat)).toList(),),
        )
      ],
    );
  }
}
