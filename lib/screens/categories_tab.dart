import 'package:flutter/cupertino.dart';
import 'package:graduation_project/screens/category_item.dart';

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
