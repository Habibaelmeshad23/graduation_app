import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/items/Custom_square.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class LettersTab  extends StatefulWidget {
  @override
  _AlphabetScreenState createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<LettersTab> {
  String selectedImage = '';

  List<String> images = [
    'assets/images/ant.jpg',
    'assets/images/bearr.jpg',
    'assets/images/cat.jpg',
    'assets/images/doggg.jpg',
    'assets/images/eleph.jpg',
    'assets/images/fox.jpg',
    'assets/images/giraf.jpg',
    'assets/images/horse.jpg',
    'assets/images/insect.jpg',
    'assets/images/jelly.jpg',
    'assets/images/kan.jpg',
    'assets/images/lionn.jpg',
    'assets/images/monkeyy.jpg',
    'assets/images/nest.jpg',
    'assets/images/owl.jpg',
    'assets/images/penguin.jpg',
    'assets/images/queen.jpg',
    'assets/images/pabbitt.jpg',
    'assets/images/sheep.jpg',
    'assets/images/turtl.jpg',
    'assets/images/um.jpg',
    'assets/images/van.jpg',
    'assets/images/watter.jpg',
    'assets/images/xylophone.jpg',
    'assets/images/yacht.jpg',
    'assets/images/zebraa.jpg',







  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Letters',
        style: TextStyle(fontSize: 35),),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: selectedImage.isNotEmpty
                  ? Image.asset(
                selectedImage,
                width: 300,
                height: 300,
              )
                  : Text('No image selected'),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: (images.length / 5).ceil(), //  number of rows
              itemBuilder: (context, rowIndex) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(5, (colIndex) {
                    final index = (rowIndex * 5) + colIndex;
                    if (index < images.length) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedImage = images[index];
                          });
                        },
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          child: Image.asset(
                            images[index],
                            width: 80,
                            height: 80,
                          ),
                        ),
                      );
                    } else {
                      return SizedBox(

                      ); //  space
                    }
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}