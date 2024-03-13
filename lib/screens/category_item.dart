import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel categoryModel;
   CategoryItem(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: categoryModel.color,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18)
          )
        ),
        child:Column(
          children: [
            Expanded(child: Image.asset(categoryModel.image)),
            Text(categoryModel.name,style: TextStyle(
              fontSize: 18,color: Colors.orange[800],
              fontWeight: FontWeight.w600
            ),)
          ],
        ) ,
      ),
    );
  }
}
