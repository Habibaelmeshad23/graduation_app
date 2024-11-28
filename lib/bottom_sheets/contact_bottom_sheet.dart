import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactBottomSheet extends StatelessWidget {
  const ContactBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.3,
      decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),topLeft: Radius.circular(20)
          )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              maxLines: 4,
              decoration: InputDecoration(
                filled: true,
                hintText: "Write here....",
                hintStyle: TextStyle(color: Colors.grey),
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.orange)
                )
              ),
            ),
          ),

          ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: EdgeInsets.only(left: 50,right: 50),
              elevation: 3,
            ),
              child: Text("Send",
                style: TextStyle(
                  fontSize: 22,fontWeight: FontWeight.w600,
                  color: Colors.white
                ),),)




        ],
      ),
    );
  }
}
