import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),topLeft: Radius.circular(20)
          )
      ),
      child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.orange)
              ),
              child: Row(
                children: [
                  Text("English"),
                  Spacer(),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.orange),
                      color: Colors.orange
                    ),
                    child: Icon(Icons.done,weight: 30,
                        color: Colors.white,size: 28,),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
