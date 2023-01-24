import 'dart:ui';

import 'package:myapp/Data/User.dart';
import 'package:myapp/MyAccount.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/const.dart';
import 'package:myapp/restaurant.dart';
import 'package:myapp/services/Location.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  

  

  void initState(){
    
    LocationGet().getCurrentPosition(context);
     super.initState();
    
  }
  
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
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        child: Container(
                          
                          child: Row(                            
                            children: [
                              Icon(
                                FontAwesomeIcons.locationArrow,
                                color: Colors.red,
                                size: 20,
                              ),
                              Text(
                                  UserData.currentAddress,
                                style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    
                    
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>MyAccount()));
                      },
                      icon: Icon(FontAwesomeIcons.user,)
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
                height: size.height*0.16,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,physics: PageScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        
                        width: size.width-20,
                        margin: EdgeInsets.all(10),// add margin 
                        padding: EdgeInsets.all(10),// add padding
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          image: DecorationImage(
                        image: NetworkImage(
                          offersList[index].offerUrl,
                        ),fit: BoxFit.cover,
                      ),
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
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
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
                    
                  ],
                ),
              ),
              SizedBox(
                height: size.height/25,
              ),
              SizedBox(
                height: size.height*0.31,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        
                        width: size.width*0.48,
                        margin: EdgeInsets.all(10),// add margin 
                        // add padding
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                          color: Colors.white,
                        
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFF8D4AE9),
                              width: 1.0,
                            ),
                          ),
                          //image: DecorationImage(
                                 //image: AssetImage(dineRestaurant[index].url),fit: BoxFit.cover
                                //)
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: size.width*0.48,
                              height: size.height*0.216,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                              children: [
                                Container(
                                  
                                  width: size.width*0.48,
                                  height: size.height*0.208,
                                  child: Image.network('https://im1.dineout.co.in/images/uploads/restaurant/sharpen/3/u/v/p3239-147063420957a818e1ecbd1.jpg?tr=tr:n-xlarge',fit: BoxFit.cover,),
                                ),
                                Positioned(
                                  top: size.height*0.19,
                                  left: size.width*0.01,
                                  child: Container(
                                  width: size.width*0.12,
                                  height: size.height*0.025,
                                  
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.lightGreen,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    Icon(FontAwesomeIcons.solidStar,size: 10,color: Colors.white,),
                                    Text('4.5',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],)
                                ),
                                ),
                                Positioned(
                                  top: size.height*0.16,
                                  left: size.width*0.33,
                                  child: Container(
                                  width: size.width*0.13,
                                  height: size.height*0.02,
                                  
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:  Color.fromARGB(100, 22, 44, 33)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    
                                    Text('4.5 km',style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],)
                                ),
                                )

                              ],
                            ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Saqi Bar',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                  Text('Connaught Place, Central Delhi',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                                  Text('Flat 20% Off the Toral Bill',style: TextStyle(fontSize: 12,color: Colors.lightGreen,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Restaurant()));
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
                height: size.height/26,
              ),
              SizedBox(
                height: size.height*0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        
                        width: size.width*0.48,
                        margin: EdgeInsets.all(10),// add margin 
                        // add padding
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                          color: Colors.white,
                        
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFF8D4AE9),
                              width: 1.0,
                            ),
                          ),
                          //image: DecorationImage(
                                 //image: AssetImage(dineRestaurant[index].url),fit: BoxFit.cover
                                //)
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: size.width*0.48,
                              height: size.height*0.216,
                              
                              child: Stack(
                              children: [
                                Container(
                                  width: size.width*0.48,
                                  height: size.height*0.208,
                                  child: Image.network('https://im1.dineout.co.in/images/uploads/restaurant/sharpen/3/u/v/p3239-147063420957a818e1ecbd1.jpg?tr=tr:n-xlarge',fit: BoxFit.cover,),
                                ),
                                Positioned(
                                  top: size.height*0.19,
                                  left: size.width*0.01,
                                  child: Container(
                                  width: size.width*0.12,
                                  height: size.height*0.025,
                                  
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.lightGreen,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    Icon(FontAwesomeIcons.solidStar,size: 10,color: Colors.white,),
                                    Text('4.5',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],)
                                ),
                                ),
                                Positioned(
                                  top: size.height*0.16,
                                  left: size.width*0.33,
                                  child: Container(
                                  width: size.width*0.13,
                                  height: size.height*0.02,
                                  
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:  Color.fromARGB(100, 22, 44, 33)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    
                                    Text('4.5 km',style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],)
                                ),
                                )

                              ],
                            ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Saqi Bar',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                  Text('Connaught Place, Central Delhi',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                                  Text('Flat 20% Off the Toral Bill',style: TextStyle(fontSize: 12,color: Colors.lightGreen,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Restaurant()));
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
                height: size.height*0.26,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Container(
                        
                        width: size.width*0.48,
                        margin: EdgeInsets.all(10),// add margin 
                        // add padding
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                          color: Colors.white,
                        
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFF8D4AE9),
                              width: 1.0,
                            ),
                          ),
                          //image: DecorationImage(
                                 //image: AssetImage(dineRestaurant[index].url),fit: BoxFit.cover
                                //)
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: size.width*0.48,
                              height: size.height*0.19,
                              
                              child: Stack(
                              children: [
                                Container(
                                  width: size.width*0.48,
                                  height: size.height*0.18,
                                  child: Image.network('https://im1.dineout.co.in/images/uploads/restaurant/sharpen/3/u/v/p3239-147063420957a818e1ecbd1.jpg?tr=tr:n-xlarge',fit: BoxFit.cover,),
                                ),
                                Positioned(
                                  top: size.height*0.164,
                                  left: size.width*0.01,
                                  child: Container(
                                  width: size.width*0.12,
                                  height: size.height*0.025,
                                  
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.lightGreen,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    Icon(FontAwesomeIcons.solidStar,size: 10,color: Colors.white,),
                                    Text('4.5',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],)
                                ),
                                ),
                                Positioned(
                                  top: size.height*0.12,
                                  left: size.width*0.33,
                                  child: Container(
                                  width: size.width*0.13,
                                  height: size.height*0.02,
                                  
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:  Color.fromARGB(100, 22, 44, 33)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                    
                                    Text('4.5 km',style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],)
                                ),
                                )

                              ],
                            ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Saqi Bar',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                  Text('Connaught Place, Central Delhi',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Restaurant()));
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
class DineRestaurant{
  String url;
  DineRestaurant(
    {required this.url}
  );
}
List<DineRestaurant>dineRestaurant=[
  DineRestaurant(url: 'images/SaqiBar.jpg'),
  DineRestaurant(url: 'images/GoldResto.jpg'),
  DineRestaurant(url: 'images/Local.jpg'),
  DineRestaurant(url: 'images/MinistryOfBar.jpg'),
  DineRestaurant(url: 'images/MySquareBar.jpg'),
  DineRestaurant(url: 'images/StationBar.jpg'),
  DineRestaurant(url: 'images/Tamasha.jpg'),
  DineRestaurant(url: 'images/TheJunkyardCafe.jpg'),
  DineRestaurant(url: 'images/UrbanGolden.jpg'),
  DineRestaurant(url: 'images/Tamasha.jpg'),
  ];
  class TrendRestaurant{
  String link;
  TrendRestaurant(
    {required this.link}
  );
}
List<TrendRestaurant>trendRestaurant=[
  TrendRestaurant(link: 'images/Tamasha.jpg'),
  TrendRestaurant(link: 'images/TheJunkyardCafe.jpg'),
  TrendRestaurant(link: 'images/38Barracks.jpg'),
  TrendRestaurant(link: 'images/OhMy.jpg'),
  TrendRestaurant(link: 'images/Local.jpg'),
  TrendRestaurant(link: 'images/Connaught.jpg'),
  TrendRestaurant(link: 'images/CafeHigh5.jpg'),
  TrendRestaurant(link: 'images/Tamasha.jpg'),
];
class FRestaurant{
  String link;
  FRestaurant(
    {required this.link}
  );
}
List<FRestaurant>fRestaurant=[
  FRestaurant(link: 'images/Tamasha.jpg'),
  FRestaurant(link: 'images/OpenhouseCafe.jpg'),
  FRestaurant(link: 'images/38Barracks.jpg'),
  FRestaurant(link: 'images/OhMy.jpg'),
  FRestaurant(link: 'images/StationBar.jpg'),
  FRestaurant(link: 'images/Tamasha.jpg'),
  FRestaurant(link: 'images/TheJunkyardCafe.jpg'),
];
