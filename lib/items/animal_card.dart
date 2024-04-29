import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/config/routes/routes.dart';

import '../video_player_widget.dart';


class AnimalCard extends StatefulWidget {
  final String name;
  final String image;
  final String food;
  final String home;
  final String span;



  AnimalCard( this.name,  this.image,this.food,this.home,this.span);

  @override
  State<AnimalCard> createState() => _AnimalCardState();
}

class _AnimalCardState extends State<AnimalCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 155,
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
                child: Image.asset(widget.image)),

            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(widget.name, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,color: Colors.orange[800],

                  ),textAlign: TextAlign.left,
                  ),
                  Text("Food: ${widget.food}",style: TextStyle(
                    fontWeight: FontWeight.w500,color: Colors.orange[600],
                  ),),
                  Text("Home: ${widget.home}",style: TextStyle(
                      fontWeight: FontWeight.w500,color: Colors.orange[600],
                  ),),
                  Text("LifeSpan: ${widget.span}",style: TextStyle(
                      fontWeight: FontWeight.w500,color: Colors.orange[600],
                  ),),

                  SizedBox(height: 5,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15),
                        boxShadow:[
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(3.0, 3.0),
                              blurRadius: 10,
                              spreadRadius: 1
                          ),
                        ]
                    ),
                    child: InkWell(
                      onTap: (){
                       Navigator.pushNamed(context, RoutesName.videoTab);
                      },
                        child: Icon(Icons.play_circle,size: 25,color:Colors.white ,)),
                  )

                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
