import 'package:flutter/cupertino.dart';

import '../../models/category_model.dart';
import '../categories_tab.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories=CategoryModel.getCategories();
    return CategoriesTab(categories);
  }
}
