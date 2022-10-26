import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/services/auth.dart';
import 'package:myapp/services/database.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final AuthService _auth=AuthService();

  List userProfilelist=[];

  String userId="";

  @override
  void initState(){
    super.initState();
    fetchUserInfo();
    fetchDatabaseList();
  }

  fetchUserInfo() async{
    User? getuser=await FirebaseAuth.instance.currentUser;
    userId=getuser!.uid;
  }

  fetchDatabaseList() async{
    dynamic resultant =await DataBaseServices().getUserList();

    if(resultant==null){
      print('Unable to retrieve');
    }else{
      setState(() {
        userProfilelist=resultant;
        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(FontAwesomeIcons.x,color: Colors.black,),
        ),
        backgroundColor: Colors.white,
        
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*1.2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              GestureDetector(
                child: Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width-20,
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Icon(FontAwesomeIcons.user),
                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Text('Kushagra',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: (MediaQuery.of(context).size.width)*0.42),
                      Icon(FontAwesomeIcons.arrowRight),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 7.0),
                  
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width-20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Text(
                          'Dining',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 2,),
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.clock),
                            SizedBox(width: 10,),
                            Text('Your bill payments',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.36,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.gift),
                            SizedBox(width: 10,),
                            Text('Rewards',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.555,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.chair),
                            SizedBox(width: 10,),
                            Text('Your reservations',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.375,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.message),
                            SizedBox(width: 10,),
                            Text('Bill payment help',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.38,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.message),
                            SizedBox(width: 10,),
                            Text('Table reservation help',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.28,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                  
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height*0.28,
                width: MediaQuery.of(context).size.width-20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Text(
                          'Food Orders',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 2,),
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.bagShopping),
                            SizedBox(width: 10,),
                            Text('Your orders',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.49,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.heart),
                            SizedBox(width: 10,),
                            Text('Favorite orders',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.42,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.addressBook),
                            SizedBox(width: 10,),
                            Text('Address book',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.445,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.message),
                            SizedBox(width: 10,),
                            Text('Online ordering help',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.32,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                    
                  
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width-20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Text(
                          'More',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 2,),
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.language),
                            SizedBox(width: 10,),
                            Text('Choose language',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.37,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.info),
                            SizedBox(width: 10,),
                            Text('About',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.603,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.noteSticky),
                            SizedBox(width: 10,),
                            Text('Give Feedback',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.426,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.star),
                            SizedBox(width: 10,),
                            Text('Rate this App',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height/18,
                        width: MediaQuery.of(context).size.width-30,
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Icon(FontAwesomeIcons.powerOff),
                            SizedBox(width: 10,),
                            Text('Log out',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.565,),
                            Icon(FontAwesomeIcons.arrowRight),
                          ],
                        ),
                        
                      ),
                        
                    ),
                    
                  
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    ) ;
  }
}