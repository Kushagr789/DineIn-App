import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Booking.dart';
import 'package:myapp/Data/RestData.dart';
import 'package:myapp/Galery.dart';
import 'package:myapp/Menu.dart';
import 'package:myapp/Reviews.dart';
class RestHome extends StatefulWidget {


  var restaurant;
  RestHome(this.restaurant);

  @override
  State<RestHome> createState() => _RestHomeState(restaurant);
}

class _RestHomeState extends State<RestHome> {
  var restaurant;

  _RestHomeState(this.restaurant);

  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          height: size.height,
          color: Color.fromRGBO(234, 231, 231, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height*0.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: size.height*0.025,
                      child: Icon(Icons.arrow_back,size: size.height*0.03,color: Colors.black,),

                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: size.width*0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: size.height*0.025,
                            child: Icon(Icons.share,size: size.height*0.03,color: Colors.black,),

                          ),
                          onTap: (){

                          },
                        ),
                        GestureDetector(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: size.height*0.025,
                            child: Icon(FontAwesomeIcons.heart,size: size.height*0.025,color: Colors.black,),

                          ),
                          onTap: (){},
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 5,right: 5,bottom: 5),
                height: size.height*0.25,

                decoration: BoxDecoration(
                  color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey),
                    ],
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 8,top: 5),
                          height: size.height*0.15,
                          child: Column(
                            children: [
                              Text(restaurant['name'].toString(),style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),),
                              Text(restaurant['cuisine'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.grey),),
                              Text("${restaurant['address']}|1 km",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.grey),),
                              Text("Rs.${restaurant['avgcost']} for one",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(offset: Offset(0,0),color: Colors.black,spreadRadius: 0,blurRadius: 1)],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: size.height*0.06,
                                width: size.width*0.18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                    color: Colors.green
                                ),
                                child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(restaurant['rating'].toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white)),
                                        Icon(FontAwesomeIcons.solidStar,size: 15,color: Colors.white,)
                                      ],
                                    )
                                ),
                              ),
                              Container(
                                height: size.height*0.06,
                                width: size.width*0.18,
                                decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                    color: Colors.white
                                ),
                                child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(restaurant['reviews'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black)),
                                        Text("Reviews",style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold),)
                                      ],
                                    )
                                ),

                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: size.height*0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                      ),
                      child: Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                height: size.height*0.05,
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(color: Colors.grey),
                                    right: BorderSide(color: Colors.grey),
                                  )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.directions,color: Colors.red,size: 22,),
                                    Text("Directions",style: TextStyle(color: Colors.black,fontSize: 16,),)
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: size.height*0.05,
                                decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(color: Colors.grey),
                                      left: BorderSide(color: Colors.grey),
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.call,color: Colors.red,size: 22,),
                                    Text("Call",style: TextStyle(color: Colors.black,fontSize: 16,),)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu(restaurant['Menu'])));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(color: Colors.grey),
                      ],
                    color: Colors.white
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 55,vertical: 7),
                  child: Center(
                    child: Text("Menu",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Gallery(restaurant['url'])));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(color: Colors.grey),
                      ],
                      color: Colors.white
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 55,vertical: 7),
                  child: Center(
                    child: Text("Gallery",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Reviews()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(color: Colors.grey),
                      ],
                      color: Colors.white
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 55,vertical: 7),
                  child: Center(
                    child: Text("Reviews",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                ),
              ),
              Container(
                height: size.height*0.25,
                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.grey),
                    ],
                    color: Colors.white
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_parking,size: 16,color: Colors.black,),
                            SizedBox(width: 10),
                            Text("Parking",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_parking,size: 16,color: Colors.black,),
                            SizedBox(width: 10),
                            Text("Parking",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_parking,size: 16,color: Colors.black,),
                            SizedBox(width: 10),
                            Text("Parking",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_parking,size: 16,color: Colors.black,),
                            SizedBox(width: 10),
                            Text("Parking",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),

                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_parking,size: 16,color: Colors.black,),
                            SizedBox(width: 10),
                            Text("Parking",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_parking,size: 16,color: Colors.black,),
                            SizedBox(width: 10),
                            Text("Parking",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_parking,size: 16,color: Colors.black,),
                            SizedBox(width: 10),
                            Text("Parking",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_parking,size: 16,color: Colors.black,),
                            SizedBox(width: 10),
                            Text("Parking",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),

                      ],
                    ),
                  ],
                )
              ),
              InkWell(
                onTap: (){
                  RestaurantData.name=restaurant['name'];
                  RestaurantData.address=restaurant['address'];

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Booking()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),

                      boxShadow: [
                        BoxShadow(color: Colors.grey),
                      ],
                      color: Colors.red
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                  child: Center(
                    child: Text("Book Now",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
