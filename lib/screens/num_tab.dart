import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumbersTab extends StatefulWidget {

  @override
  State<NumbersTab> createState() => _NumbersTabState();
}

class _NumbersTabState extends State<NumbersTab> {
  String selectedImage = '';
  String selectedText = '';
  //Color textColor = Colors.black;


  List<String> images = [
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
    'assets/images/5.jpeg',
    'assets/images/6.jpeg',
    'assets/images/7.jpeg',
    'assets/images/8.jpeg',
    'assets/images/9.jpeg',
    'assets/images/0.jpeg',

  ];

  List<String> words = [
    '1   =  ONE   ',
    '2   =  TWO',
    '3   =  THREE   ',
    '4   =  FOUR',
    '5   =  FIVE',
    '6   =  SEX',
    '7   =  SEVEN',
    '8   =  EIGHT',
    '9   =  NINE',
    '0   =  ZERO',
  ];

  //List<Color> wordColors = [
  //Colors.pinkAccent,

  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Numbers',
          style: TextStyle(fontSize: 28,color: Colors.pink),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: selectedImage.isNotEmpty
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    selectedImage,
                    width: 300,
                    height: 300,
                  ),
                  SizedBox(height: 20),
                  Text(
                    selectedText,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  ElevatedButton(onPressed: (){},
                    child: Text('play' ,style: TextStyle(fontSize: 30,color: Colors.pinkAccent),),

                  )
                ],
              )
                  : Image.asset('assets/images/numbers.jpg'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(28),
              topRight: Radius.circular(28)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(

                  color: Colors.pink[100]!.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, -5),
                ),
              ],
            ),
              child: ListView.builder(
                itemCount: (images.length / 5).ceil(),
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
                              selectedText = words[index];
                              //textColor = wordColors[index];
                            });
                          },
                          child: Image.asset(
                            images[index],
                            width: 75,
                            height: 120,
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    }),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );


  }
}
