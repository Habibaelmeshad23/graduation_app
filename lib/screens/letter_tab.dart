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
    ['assets/images/a.jpg', 'assets/images/app.jpg', 'assets/images/ant.jpg'],
    ['assets/images/b.jpg', 'assets/images/book.jpg', 'assets/images/ban.jpg'],
    ['assets/images/c.jpg', 'assets/images/car.jpg', 'assets/images/bcat.jpg'],
    ['assets/images/d.jpg', 'assets/images/door.jpg', 'assets/images/dogg.jpg'],
    ['assets/images/e.jpg', 'assets/images/earth.jpg', 'assets/images/elephant.jpg'],
    ['assets/images/ff.jpg', 'assets/images/fi.jpg', 'assets/images/frog.jpg'],
    ['assets/images/gg.jpg', 'assets/images/gu.jpg', 'assets/images/giraff.jpg'],
    ['assets/images/h.jpg', 'assets/images/honey.jpg', 'assets/images/hourse.jpg'],
    ['assets/images/i.jpg', 'assets/images/ice.jpg', 'assets/images/insectt.jpg'],
    ['assets/images/j.jpg', 'assets/images/jar.jpg', 'assets/images/jacket.jpg'],
    ['assets/images/k.jpg', 'assets/images/kang.jpg', 'assets/images/king.jpg'],
    ['assets/images/l.jpg', 'assets/images/lio.jpg', 'assets/images/leaf.jpg'],
    ['assets/images/m.jpg', 'assets/images/mon.jpg', 'assets/images/moon.jpg'],
    ['assets/images/n.jpg', 'assets/images/nose.jpg', 'assets/images/nut.jpg'],
    ['assets/images/o.jpg', 'assets/images/octo.jpg', 'assets/images/orange.jpg'],
    ['assets/images/p.jpg', 'assets/images/pen.jpg', 'assets/images/pan.jpg'],
    ['assets/images/q.jpg', 'assets/images/queenn.jpg', 'assets/images/question.jpg'],
    ['assets/images/r.jpg', 'assets/images/rain.jpg', 'assets/images/ri.jpg'],
    ['assets/images/s.jpg', 'assets/images/sh.jpg', 'assets/images/sun.jpg'],
    ['assets/images/t.jpg', 'assets/images/tree.jpg', 'assets/images/Tomato.jpg'],
    ['assets/images/u.jpg', 'assets/images/Umbrella.jpg', 'assets/images/un.jpg'],
    ['assets/images/v.jpg', 'assets/images/volcano.jpg', 'assets/images/vann.jpg'],
    ['assets/images/w.jpg', 'assets/images/wind.jpg', 'assets/images/waterr.jpg'],
    ['assets/images/x.jpg', 'assets/images/xray.jpg', 'assets/images/xylophonee.jpg'],
    ['assets/images/y.jpg', 'assets/images/yougert.jpg', 'assets/images/yoyo.jpg'],
    ['assets/images/z.jpg', 'assets/images/zeb.jpg', 'assets/images/zooo.jpg'],



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

