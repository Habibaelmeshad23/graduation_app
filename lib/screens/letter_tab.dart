import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class LettersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Letters ',style: TextStyle(fontSize:25,fontWeight: FontWeight.w500 ),),
      ),
      body: AvatarList(),
    );
  }
}

class AvatarList extends StatelessWidget {
  final List<List<String>> avatarImages = [
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/b.jpg', 'assets/images/book.jpg', 'assets/images/ban.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],
    ['assets/images/anew.jpg', 'assets/images/apple.jpg', 'assets/images/apple.jpg'],


  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: avatarImages.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              avatarImages[index].length,
                  (int i) {
                return CircleAvatar(
                  backgroundImage: AssetImage(avatarImages[index][i]),
                  radius: 55,
                );
              },
            ),
          ),
        );
      },
    );
  }
}

