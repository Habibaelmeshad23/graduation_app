import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String child;
  final String image;
  final String child1;
  final String image1;

  const JobCard( this.child, this.image,  this.child1,  this.image1,  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 450,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      child,
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Image.asset(image),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 450,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(image1),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      child1,
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
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
