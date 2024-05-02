import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/items/job_card.dart';

class JobsTab extends StatelessWidget {
  final List card=[
    ' Teacher',
    ' Lawyer',
    'Doctor',
    'Farmer',
    'Dentist',
    'Fireman',
    'Pilot'
  ];
  final List place=[
    'work in: School',
    'work in: Court',
    'work in: Hospital',
    'work in: Field',
    'work in: Clinic',
    'work in: m',
    'work in: Airport',


  ];
  List<String>image=[
    "assets/images/teacher.jpeg",
    "assets/images/lawyer.jpeg",
    "assets/images/doctor.jpeg",
    "assets/images/farm.jpeg",
    "assets/images/dentist.jpeg",
    "assets/images/fire.jpg",
    "assets/images/pilot.jpg",
  ];
  final List card1=[
    'Singer',
    'Student',
    'Waiter',
    'Chef',
    'Vet',
    'Engineer',
    'Nurse'
  ];
  final List place1=[
    'work in: theater',
    'work in: School',
    'work in: Cafe',
    'work in: Hotel',
    'work in: Clinic',
    'work in: Company',
    'work in: Hospital',

  ];

  List<String>image1=[
    "assets/images/singer.jpeg",
    "assets/images/stu.jpg",
    "assets/images/waiter.jpeg",
    "assets/images/chef.jpeg",
    "assets/images/vit.jpeg",
    "assets/images/engineer.jpeg",
    "assets/images/nurse.jpeg",

  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Dream clouds.jpg"),
              fit: BoxFit.cover)
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text("Jobs", style: TextStyle(fontSize:40,fontWeight: FontWeight.w500 ,),
              textAlign: TextAlign.center,),
          ),
          backgroundColor: Colors.transparent,
          body:ListView.builder(
              itemCount: card.length,
              itemBuilder: (context,index){
                return JobCard(
                  card[index],
                  image[index],
                  place[index],
                  card1[index],
                  image1[index],
                  place1[index],
                );
              })

      ),
    );

  }
}
