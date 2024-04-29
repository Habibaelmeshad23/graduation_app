import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GamesCard extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;

   GamesCard(this.image, this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        height: 90,
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

                height: 85,
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(image),
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1,style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16
                ),),
                Text(text2)
              ],
            ),

          ],
        ),
      ),
    );
  }
}

