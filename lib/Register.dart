

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/HomePage.dart';
import 'package:myapp/LoginPage.dart';
import 'package:myapp/services/auth.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _formKey = GlobalKey<FormState>();
  final AuthService _auth=AuthService();
  String email='';
  String password='';
  String confirmpassword='';
  String username='';
  String firstname='';
  String lastname='';
  String phone='';
  bool showSpinner=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 54, 41),
        elevation: 0,
      ),
      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end:Alignment.bottomRight,
              colors: [
              Color.fromARGB(255, 243, 54, 41),
              Color.fromARGB(255, 243, 55, 118),
              Color.fromARGB(255, 195, 43, 222),
              ]
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Text(
                'Create Account',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height:600,
                width: 325,
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
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          suffixIcon: Icon(FontAwesomeIcons.user,size: 17,),
                        ),
                        onChanged: (value) {
                          username=value;
                        },
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'First Name',
                          suffixIcon: Icon(FontAwesomeIcons.info,size: 17,),
                        ),
                        onChanged: (value) {
                          firstname=value;
                        },
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          suffixIcon: Icon(FontAwesomeIcons.info,size: 17,),
                        ),
                        onChanged: (value) {
                          lastname=value;
                        },
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          suffixIcon: Icon(FontAwesomeIcons.envelope,size: 17,),
                        ),
                      
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          email=value;
                        },
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(FontAwesomeIcons.lock,size: 17,),
                        ),
                        onChanged: (value) {
                          password=value;
                        },
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          suffixIcon: Icon(FontAwesomeIcons.lock,size: 17,),
                        ),
                        onChanged: (value) {
                          confirmpassword=value;
                        },
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Contact No.',
                          suffixIcon: Icon(FontAwesomeIcons.phone,size: 17,),
                        ),
                        onChanged: (value) {
                          phone=value;
                        },
                        keyboardType: TextInputType.phone,
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
                          child: Text('Sign Up',
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
                        try {
                          final newUser=await _auth.createNewUser(username,firstname, lastname, phone, email, password);
                          if(newUser!=null&&confirmpassword==password){
                            
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                          }
                        }catch(e) {
                            print(e);
                          }
                          setState(() {
                            showSpinner=false;
                          });
                              }
                      
                    ),
                    SizedBox(height: 10,),
                    
                  ],
                ),
              )
            ],
          ), 
        )
      )
    );    
  }
  
}