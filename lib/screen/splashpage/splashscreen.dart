
import 'dart:async';
import 'package:flutter/material.dart';
import '../login/loginpage.dart';


class Splashpage  extends StatefulWidget{
  @override
  State<Splashpage> createState() => _SplashpageState();
}
class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Loginpage1()));


    }) ;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container (
        decoration:const BoxDecoration(
          color: Colors.black,
            image:DecorationImage(
                fit: BoxFit.fill,
                opacity: 0.1,
                image: AssetImage("assets/images/logo_bg.jpg"))
        ),
        child: Center(child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/ic_logo.jpeg",height: 150,width: 300,),
            SizedBox(height: 10,),
            Text("Do Shop",
              style:TextStyle(fontSize: 35,color: Colors.white70,fontWeight: FontWeight.w200) ,
            )],),),
      ),
    );

  }
}


