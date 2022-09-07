import 'package:shortlisting/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [kBGColor, lightBG])),
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 10,
          centerTitle: true,
          title:
              Text("Welcome to My App",
                  style: TextStyle(
                      fontFamily: 'Open Sans', fontWeight: FontWeight.bold)),
        ),
        body:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child:Text(
                        'Welcome to my Sample app',
                        style: TextStyle(
                        fontSize: 25.0,
                        color: kPrimaryColor,
                        fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child:Text(
                        'Here is a pic',
                        style: TextStyle(
                        fontSize: 25.0,
                        color: kPrimaryColor,
                        fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                // child: FittedBox(
                  child:Image.network('https://placeimg.com/640/480/any',height: 150,fit:BoxFit.fill),
                  ),
            ],
          ),
        )
      )
    );
  }
}
