import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/items/games_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GamesTab extends StatelessWidget {
  final myItems=[
    Image.asset("assets/images/kids1"),
    Image.asset("assets/images/kids2"),
    Image.asset("assets/images/kids3"),

  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Dream clouds.jpg"),
              fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.games),
        ),
        body: ListView(
          children: [
            SizedBox(height: 20,),
            CarouselSlider(items: [
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage("assets/images/kids1.jpg"),
                   fit: BoxFit.cover
                 ),
                  borderRadius: BorderRadius.circular(25)
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/kids2.jpg"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(25)
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/kids3.jpg"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(25)
                ),
              )

            ], options: CarouselOptions(
              height: 180,aspectRatio: 16/8,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 700),
              enlargeCenterPage: true,
              enlargeFactor: 0.5
            )),
           SizedBox(height: 10,),
           
           GamesCard("assets/images/game1.jpg","Maze for Kids - Find Exit","Make original mazes!",),
            GamesCard("assets/images/color.jpg","colouring&Drawing for kids","Baby Toddler painting Games"),
            GamesCard("assets/images/panda.jpg","Baby Panda's Glow","Doodle Game"),
            GamesCard("assets/images/piano.jpg","Baby piano for kids","Sounds&music games for kids")



          ],
        ),

        

      ),
    );
  }
}
