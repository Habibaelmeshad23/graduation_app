
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/config/language/language_bottom_sheet.dart';

class SettingsTab extends StatefulWidget  {



  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  // TODO: implement context
  BuildContext get context => super.context;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

    ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SizedBox(height: 30,),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset("assets/images/pho3.jpg")),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Language",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width:double.infinity ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.orange)
              ),
                child: Row(
                  children: [
                    Text("English",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500
                    ),),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        showLanguageBottomSheet();
                      },
                      child: Icon(Icons.arrow_drop_down,color: Colors.orange,
                      size: 30,),
                    )

                  ],
                ),

            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.orange)
              ),
              child: Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 12,),
                  Text("Contact Us",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500
                  ),),
                 Spacer(),
                  Icon(Icons.arrow_forward,color: Colors.orange,
                    size: 25,)

                ],
              ),
              
            ),
            


          ],
        ),
      ),

    );
  }

  showLanguageBottomSheet(){
    showModalBottomSheet(

        context: context,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),topLeft: Radius.circular(20)
          )
        ),
        builder: (context) => LanguageBottomSheet());
  }
}
