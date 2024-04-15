import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;
  final String image;
  MySquare(this.child,this.image);


  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding:  EdgeInsets.all(10),
        child:  Container(
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow:[
                BoxShadow(
                    color: Colors.grey.shade500,
                    offset: Offset(3, 3),
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
                  children: [
                    Text(child,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),textAlign: TextAlign.left,
                    ),

                  ],
                ),
              )
            ],

          ),

        ),
    );
  }
}
