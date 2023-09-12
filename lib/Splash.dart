import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/HomePage.dart';
import 'package:myapp/LoginPage.dart';
import 'package:myapp/services/Location.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    
    super.initState();
    LocationGet().getCurrentPosition(context).whenComplete(() {
      Timer(Duration(seconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>(FirebaseAuth.instance.currentUser==null? LoginPage():HomePage())));
      });
    })
    ;
    
  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.pinkAccent,
        child: Center(
          child: Container(
            height: size.height*0.45,
            width: size.width*0.8,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/cooking.png',height: size.height*0.3,),
                Text('Dineout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
