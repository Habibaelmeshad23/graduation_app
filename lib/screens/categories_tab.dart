import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/config/routes/routes.dart';
import 'package:graduation_project/screens/animal_tab.dart';
import 'package:graduation_project/screens/num_tab.dart';

import '../items/category_item.dart';
import '../models/category_model.dart';

class CategoriesTab extends StatelessWidget {
  List<CategoryModel> categories;

  CategoriesTab(this.categories);


  @override
  Widget build(BuildContext context) {
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
