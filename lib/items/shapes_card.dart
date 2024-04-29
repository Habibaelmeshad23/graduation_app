import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShapesCard extends StatelessWidget {
  final String child;
  final String child1;
  final String image;
  final String image1;
  final Color textColor;
  final Color textColor1;
  ShapesCard( this.child, this.child1,this.image,this.image1, this.textColor, this.textColor1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          children: [
            Row(children:

            [CircleAvatar(radius: 70,
              backgroundImage: AssetImage(image),
              backgroundColor: Colors.transparent,
            ),

              SizedBox(width: 8,),
              Align(alignment: Alignment(0.0,0.0),
                child: SizedBox(
                  width: 225,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(36.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12,offset: Offset(3.0,6.0)
                                ,blurRadius: 10.0
                                ,spreadRadius: 2
                            ),
                          ]
                      ),
                      child: Center(
                        child: Text(
                          child,
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                      ),
                    ),
                  ),
                ),),

            ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Align(alignment: Alignment(0.0,0.0),
                  child: SizedBox(
                    width: 225,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(36.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12,offset: Offset(3.0,6.0)
                                  ,blurRadius: 10.0
                                  ,spreadRadius: 2
                              ),
                            ]
                        ),
                        child: Center(
                          child: Text(
                            child1,
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color:textColor1
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),),
                SizedBox(width: 8,),
                CircleAvatar(radius: 70,
                  backgroundImage: AssetImage(image1),
                  backgroundColor: Colors.transparent,
                ),




              ],),
            SizedBox(height: 30,),


          ]
      ),
    );


  }
}
