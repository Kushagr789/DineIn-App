import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myapp/Register.dart';
import 'package:myapp/services/auth.dart';
import 'package:myapp/services/database.dart';
import 'const.dart' as global;
class LoginPage extends StatefulWidget {
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}
final _auth=FirebaseAuth.instance;
class _LoginPageState extends State<LoginPage> {
  
  String email='';
  String password='';
  bool showSpinner=false;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    future:Firebase.initializeApp();
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end:Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 243, 54, 41),
                Color.fromARGB(255, 243, 55, 118),
                Color.fromARGB(255, 195, 43, 222),
              ]
              )
          ),
          child: Center(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height*0.15,),
              SizedBox(height: 35,),
              Text('Dineout',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 65,
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Container(
                height: size.height*0.5,
                width: size.width*0.82,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Text('Hello',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                      ),    
                    ),
                    SizedBox(height: 30),
                    Text('Please Login to your account',
                      style: TextStyle(
                        fontSize: 15, 
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 250,
                      child: TextField(
                        onChanged: (value) {
                          email=value;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          
                          suffixIcon: Icon(FontAwesomeIcons.envelope,size: 17,),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        onChanged: (value) {
                          password=value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(FontAwesomeIcons.lock,size: 17,),
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 20,),
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors:[
                              Color(0xFF8A2387),
                              Color(0xFFE94057),
                              Color(0xFFF27121),
                            ]
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async{
                                setState(() {
                                  showSpinner=true;
                                });
                                try{
                                  final user=await _auth.signInWithEmailAndPassword(email: email, password: password);
                                  if(user!=null){
                                    DataBaseServices().getInfo();
                                    Navigator.pushReplacement(context,  MaterialPageRoute(builder: ((context) => HomePage())));
                                  }
                                }catch(e){
                                  print(e);
                                }
                                setState(() {
                                  showSpinner=false;
                                });
                              }
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      child:  Text("Doesn't not have an account? REGISTER",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 239, 75, 4),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> Register()),
                                );
                              },
                    ),
                    
                  ],
                ),
              )
            ],
          ),
          ),
        ),
      )
    );
  }
  
  
}