import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/items/animal_card.dart';


class AnimalsTab extends StatelessWidget {

  List<String>names=[
    "Elephant","Lion","Monkey","Bear","Dog","Giraffe","Zebra","Rabbit"
  ];
  List<String>images=[
    "assets/images/ele.jpg",
    "assets/images/lion.jpg",
    "assets/images/monkey.jpg",
    "assets/images/bear.jpg",
    "assets/images/dog.jpg",
    "assets/images/giraffe.jpg",
    "assets/images/zebra.jpg",
    "assets/images/Rabbit.jpg",
  ];
  List<String>foods=[
    "Tree Leaves","Meats","Bananas","Fish,Honey","grass","grass","grass","Carrots",
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
          title: Text("Animals",style: TextStyle(fontSize:25,fontWeight: FontWeight.w500 ),),
        ),
        backgroundColor: Colors.transparent,
        body: Expanded(
          child: ListView.builder(
            itemCount: names.length,
              itemBuilder: (context,index){
            return AnimalCard(names[index], images[index],foods[index]);
            
          }),
        )
        ),

      );

  }
}
