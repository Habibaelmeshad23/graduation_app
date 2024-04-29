import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/shapes_card.dart';

class ShapesTab extends StatelessWidget {

  final List text=[
    ' I am a Triangle',
    ' I am a Star',
    'I am a Rectangle',
    ' I am a Rhombus',
  ];
  final List image=[
    "assets/images/trian.jpeg",
    "assets/images/star.jpeg",
    "assets/images/rec.jpeg",
    "assets/images/diam.jpeg",
  ];
  final List text1=[
    ' I am a Square',
    ' I am a Heart',
    ' I am a Pentagon',
    ' I am a Circle'
  ];
  final List image1=[
    "assets/images/squ.jpeg",
    "assets/images/heart.jpeg",
    "assets/images/pentagon.jpeg",
    "assets/images/circ.jpeg",
  ];
  final List<Color> textColors = [
    Colors.pink.shade300,
    Colors.yellow.shade800,
    Colors.purple,
    Colors.amber.shade900
  ];
  final List<Color> textColorss = [
    Colors.purple.shade400,
    Colors.redAccent,
    Colors.orangeAccent,
    Colors.deepPurple.shade700];


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
              title: Text("Shapes",style: TextStyle(
                  fontSize:30,fontWeight: FontWeight.w500 ),),
            ),
            backgroundColor: Colors.transparent,
            body: ListView.builder(itemCount: text.length,
                itemBuilder: (context, index){
                  return ShapesCard(
                    text[index],
                    text1[index],
                    image[index],
                    image1[index],
                    textColors[index],
                    textColorss[index],
                  );
                })

        )
    );


  }
}
