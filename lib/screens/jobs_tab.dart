import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/items/Custom_square.dart';

class JobsTab extends StatelessWidget {

  final List shapes=[
    'Teacher','Doctor',
    'Lawyer','Waiter',
    'Police Man','Singer',
    'Accountant','vet',
    'Dintist','Engneer',
    'Fire Man','Mechanic',
    'Nurse','spaceman'
  ];
  List<String>images=[
    "assets/images/teacher.jpg",
    "assets/images/doctoor.jpg",
    "assets/images/lawyer.jpg",
    "assets/images/waiter.jpg",
    "assets/images/traffic.jpg",
    "assets/images/singer.jpg",
    "assets/images/accountant.jpg",
    "assets/images/animdoc.jpg",
    "assets/images/dintist.jpg",
    "assets/images/engneer.jpg",
    "assets/images/fireman.jpg",
    "assets/images/mech.jpg",
    "assets/images/nurse.jpg",
    "assets/images/space.jpg",


  ];
  List<String>audio=[

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Dream clouds.jpg"),
              fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Jobs", style: TextStyle(fontSize:40,fontWeight: FontWeight.w500 ,),
            textAlign: TextAlign.center,),
        ),
        backgroundColor: Colors.transparent,
        body:
        ListView.builder(

            itemCount:shapes.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index){
              return MySquare
                (
                  shapes[index],
                  images[index],

              );
            }
        ),
      ),
    );
  }
}

