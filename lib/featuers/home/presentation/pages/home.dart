
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/models/category_model.dart';

import '../../../../screens/categories_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories=CategoryModel.getCategories();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Ready to Learn? ",
        style:
        GoogleFonts.merriweather(color: Colors.orange[700],
            textStyle:TextStyle(fontSize: 28),fontWeight: FontWeight.w600 ),),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:FloatingActionButton(onPressed: (){},
          child: Icon(Icons.home,color: Colors.blue[50],),
        backgroundColor: Colors.orange[400],
        shape: CircleBorder(),

      ) ,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: (value){
            index=value;
            setState(() {

            });
          },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.person,size: 20,), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings,size: 20,),label: "")

            ]),
      ),
      body: CategoriesTab(categories),


    );
  }
}
