import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/config/routes/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/IMG.JPG"),
        fit: BoxFit.cover)
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("WELCOME",
                style:GoogleFonts.average(
                  fontSize: 35,
                fontWeight: FontWeight.bold),
              ),
              Text("To join the Teddy",
              style: TextStyle(
                fontSize: 18
              ),),
              SizedBox(height: 25,),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "User Name",
                  hintStyle: TextStyle(
                    color: Colors.grey
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.transparent)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent)
                  ),
                ),
              ),
              SizedBox(height: 25,),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.grey
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent)
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  borderRadius: BorderRadius.circular(15)
                ),
                child:Center(
                  child:Text("Log in",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    
                  ),),
                )
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member? ",
                    style: TextStyle(

                        fontWeight: FontWeight.bold
                    ),),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamedAndRemoveUntil(context, RoutesName.signup, (route) => false);
                    },
                    child: Text("Register Now",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              )




            ],
          ),
        ),
      ),
    );
  }
}
