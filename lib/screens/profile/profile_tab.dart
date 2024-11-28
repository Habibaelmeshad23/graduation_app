import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(20),
        child :Column(
          children: [
            CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
            const SizedBox(height: 20),
            itemProfile('Name', 'mohamed',CupertinoIcons.person_solid  ),

            const SizedBox(height: 20),
            itemProfile('Email', 'Mohamed@gmail.com',CupertinoIcons.mail_solid  ),
            const SizedBox(height: 20),
            itemProfile('Help Center', 'information',CupertinoIcons.info_circle_fill  ),

          ],
        ),
      ),
    );

  }

  itemProfile (String title, String subtitle,IconData iconData){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.orange),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,1),
              color: Colors.deepOrange.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,

            )
          ]

      ),

      child: ListTile(

        title:  Text(title),
        subtitle:  Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.orange[700] ,),
        tileColor: Colors.transparent,

      ),
    );
  }
}