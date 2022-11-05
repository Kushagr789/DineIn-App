import 'dart:ui';

import 'package:myapp/MyAccount.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/const.dart';
import 'package:myapp/restaurant.dart';
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
                          image: DecorationImage(
                                  image: AssetImage(dineRestaurant[index].url),fit: BoxFit.cover
                                )
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
                          image: DecorationImage(
                                  image: AssetImage(trendRestaurant[index].link),fit: BoxFit.cover
                                )
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
                          image: DecorationImage(
                                  image: AssetImage(fRestaurant[index].link),fit: BoxFit.cover
                                )
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
