import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JobCard extends StatefulWidget {
  final String child;
  final String image;
  final String child1;
  final String image1;
  final String work;
  final String work1;

   JobCard( this.child, this.image,this.work,  this.child1,  this.image1,this.work1  );

  @override
  State<JobCard> createState() => _JobCardState();
}
class _JobCardState extends State<JobCard> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 180,
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
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(26),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.child, style:
                        TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue[700]),

                        ),
                        Text(widget.work,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.orange[700]) ,
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(widget.image)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 180,
            width: 400,
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
                    child: Image.asset(widget.image1)),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(17),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.child1,
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

                        ),
                        Text(widget.work1,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

  }
}
