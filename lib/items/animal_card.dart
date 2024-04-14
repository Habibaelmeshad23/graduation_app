import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AnimalCard extends StatelessWidget {
  final String name;
  final String image;
  final String food;
  final String home;
  final String span;



  AnimalCard( this.name,  this.image,this.food,this.home,this.span);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            //border: Border.all(color: Colors.orange),
            boxShadow:[
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15,
                  spreadRadius: 1
              ),
            ]
        ),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Image.asset(image)),

            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,color: Colors.orange[800],

                  ),textAlign: TextAlign.left,
                  ),
                  Text("Food: $food",style: TextStyle(
                    fontWeight: FontWeight.w500,color: Colors.orange[600],
                  ),),
                  Text("Home: $home",style: TextStyle(
                      fontWeight: FontWeight.w500,color: Colors.orange[600],
                  ),),
                  Text("LifeSpan: $span",style: TextStyle(
                      fontWeight: FontWeight.w500,color: Colors.orange[600],
                  ),)

                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
