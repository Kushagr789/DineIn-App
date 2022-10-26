import 'dart:ui';

import 'package:myapp/MyAccount.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height/10,
                width: size.width,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                            FontAwesomeIcons.locationArrow,
                            color: Colors.black,
                            ),
                    ),
                    Text(
                      "Add Your Location Here",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: size.width/5,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>MyAccount()));
                      },
                      icon: Icon(FontAwesomeIcons.user)
                    ),
                  ],
      
                ),
              ),
              Container(
                height: size.height/15,
                width: size.width/1.1,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width / 40,
                    ),
                    Icon(Icons.search, color: Colors.red),
                    SizedBox(
                      width: size.width / 20,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Restaurant name, cuisine, or a dish...',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height*0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,physics: PageScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        
                        width: size.width-20,
                        margin: EdgeInsets.all(10),// add margin 
                        padding: EdgeInsets.all(10),// add padding
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white,
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFF8D4AE9),
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: size.width/35,),
                    Text(
                      'Restaurants near you',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: size.width*0.2,),
                    GestureDetector(
                      child: Text(
                        'VIEW ALL',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height/25,
              ),
              SizedBox(
                height: size.height*0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        
                        width: size.width*0.48,
                        margin: EdgeInsets.all(10),// add margin 
                        padding: EdgeInsets.all(10),// add padding
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white,
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFF8D4AE9),
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: size.width/35,),
                    Text(
                      'Trending restaurants',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: size.width*0.21,),
                    GestureDetector(
                      child: Text(
                        'VIEW ALL',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height/25,
              ),
              SizedBox(
                height: size.height*0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        
                        width: size.width*0.48,
                        margin: EdgeInsets.all(10),// add margin 
                        padding: EdgeInsets.all(10),// add padding
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white,
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFF8D4AE9),
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: size.width/35,),
                    Text(
                      'Featured restaurants',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: size.width*0.22,),
                    GestureDetector(
                      child: Text(
                        'VIEW ALL',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height/25,
              ),
              SizedBox(
                height: size.height*0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        
                        width: size.width*0.48,
                        margin: EdgeInsets.all(10),// add margin 
                        padding: EdgeInsets.all(10),// add padding
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white,
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFF8D4AE9),
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        
                      },
                    );
                  },
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  
  }
}