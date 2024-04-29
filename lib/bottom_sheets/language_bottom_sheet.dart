import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LanguageBottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
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
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.orange)
              ),
              child: InkWell(
                onTap: (){
                  provider.changeLanguage("en");

                },
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.eng,
                      style: TextStyle(
                      fontSize: 24,fontWeight: FontWeight.w500
                    ),),
                    Spacer(),
                    provider.languageCode=="en"
                        ?Container(
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.orange),
                        color: Colors.orange
                      ),
                      child:Icon(Icons.done,weight: 30,
                          color: Colors.white,size: 28,)
                    ):SizedBox.shrink()

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.orange)
              ),
              child: InkWell(
                onTap: (){
                  provider.changeLanguage("ar");

                },
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.arabic,
                      style: TextStyle(
                        fontSize: 24,fontWeight: FontWeight.w500
                    ),),
                    Spacer(),
                    provider.languageCode=="en"
                        ?
                    SizedBox.shrink()
                        :Container(
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
            ),
          )
        ],
      ),
    );
  }
}
