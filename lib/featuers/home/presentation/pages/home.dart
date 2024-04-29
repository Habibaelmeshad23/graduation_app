
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/models/category_model.dart';
import 'package:graduation_project/screens/home/home_tab.dart';
import 'package:graduation_project/screens/profile/profile_tab.dart';
import 'package:graduation_project/screens/settings/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import '../../../../screens/categories_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex=1;
  List<Widget>tabs=[ProfileTab(),HomeLayout(),SettingsTab(),];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: Text(AppLocalizations.of(context)!.learn,
        style:
        GoogleFonts.merriweather(color: Colors.orange[700],
            textStyle:TextStyle(fontSize: 28),fontWeight: FontWeight.w600 ),),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:FloatingActionButton(onPressed: (){
       onTabTapped(1);
      },
          child: Icon(Icons.home,color: Colors.blue[50],),
        backgroundColor: Colors.orange[400],
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Colors.white,
            width: 3
          )
        ),

      ) ,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: onTabTapped,
            currentIndex: currentindex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.person,size: 20), label: "",

             ),
              BottomNavigationBarItem(icon: Icon(Icons.home,size: 20,color: Colors.transparent,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings_sharp,size: 20,),label: "")


            ]),
      ),
      body: tabs[currentindex],



    );
  }
  onTabTapped(int index){
    setState(() {
      currentindex=index;
    });
  }
}
