import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          title: Text("Games"),
        ),
        body: ListView(
          children: [
            SizedBox(height: 20,),
            CarouselSlider(items: [
              Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage("assets/images/kids1.jpg"),
                   fit: BoxFit.cover
                 ),
                  borderRadius: BorderRadius.circular(25)
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/kids2.jpg"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(25)
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
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
            ))
          ],
        )
        

      ),
    );
  }
}
