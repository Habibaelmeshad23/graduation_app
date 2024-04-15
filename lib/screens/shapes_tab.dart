import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/items/Custom_square.dart';

class ShapesTab extends StatelessWidget {

  final List shapes=[
    'Triangle','Circle',
    'Square','Rectangle',
    'Star','Heart',
    'Rhombus','Pentagon',
    'Cone','Oval',
    'Hexagon','Cylinder',
    'Cube',
  ];
  List<String>images=[
  "assets/images/tri.jpg",
  "assets/images/circle.jpg",
  "assets/images/square.jpg",
  "assets/images/ro.jpg",
  "assets/images/star.jpg",
  "assets/images/heart.jpg",
  "assets/images/rhombus.jpg",
  "assets/images/pentagon.jpg",
    "assets/images/cone.jpg",
    "assets/images/oval.jpg",
    "assets/images/hexagon.jpg",
    "assets/images/cylender.jpg",
    "assets/images/cube.jpg",

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
        title: Text("Shapes",
          style: TextStyle(fontSize:40,fontWeight: FontWeight.w500 ,),
          textAlign: TextAlign.center,),
      ),
        backgroundColor: Colors.transparent,
        body:
            ListView.builder(

                itemCount:13,
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
              return MySquare
                (
                  shapes[index],
                  images[index]
                );
            }
            ),
        ),
      );
  }
}
