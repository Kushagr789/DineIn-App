import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/HomeScreen.dart';
import 'package:myapp/Menu.dart';
import 'package:myapp/Reviews.dart';

class Restaurant extends StatefulWidget {
  

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  
  @override
  Widget build(BuildContext context) {
    int select=0;int guest=0;
    final size=MediaQuery.of(context).size;
    return Scaffold(
      
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Restaurants').doc('Tamasha').snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Text('Loading');
          }
          var restDoc=snapshot.data;
          return NestedScrollView(
        
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: size.height*0.3,
              floating: false,
              pinned: false,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                  
                  
                  
                  background: Image.network(
                    restDoc['image'],
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child:Container(
            height: size.height*1.5,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                child: Container(
                  height: size.height*0.15,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),                        
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal
                    ),]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      SizedBox(height: size.height*0.03,),
                      Text(
                        restDoc!['name'],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        restDoc['add'],
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 99, 98, 98),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '\u{20B9}100 for 1 ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 38, 37, 37),
                            ),
                          ),
                          
                          Text(
                            '| Continental, Asian, Italian, North Indian',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 38, 37, 37),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Now Open ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green,
                            ),
                          ),
                          
                          Text(
                            '| Closes at 01:30 AM',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 38, 37, 37),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  ),
                ),
                
              ),
              
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                child: GestureDetector(
                  child: Container(
                  height: size.height*0.08,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),                        
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal
                    ),]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      
                      children: [
                        SizedBox(width: size.width*0.02,),
                        Icon(
                          FontAwesomeIcons.chair,size: 35,
                        ),
                        SizedBox(width: size.width*0.05,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Reserve a table',
                              
                              style: TextStyle(
                                fontSize: 20,
                                
                              ),
                            ),
                            
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return Padding(padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                        child: Container(
                          height: size.height*0.55,
                          width: size.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'SELECT DATE & TIME',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(FontAwesomeIcons.x,size: 20,),
                                    iconSize: 15,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                                child: Container(
                                  height: size.height*0.05,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18)),                        
                                    color: Colors.white,
                                    boxShadow: [BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0,
                                      blurStyle: BlurStyle.normal
                                    ),]
                                  ),
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Date',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text('Nov 2022',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: size.height*0.08,
                                width: size.width,
                                child: ListView.builder(
                                  itemCount: 7,
                                  
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: size.height*0.08,
                                      width: size.width/5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        
                                      ),
                                      child: Column(
                                        children: [
                                          Text(days[index].day,
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          
                                          ),
                                          Text((days[index].date).toString(),
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold
                                          ),)
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                                  child: Container(
                                    height: size.height*0.25,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),                        
                                      color: Colors.white,
                                      boxShadow: [BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(0.0, 0.0),
                                        blurRadius: 2.0,
                                        spreadRadius: 0.0,
                                        blurStyle: BlurStyle.normal
                                      ),]
                                    ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Column(
                                      children: [
                                        
                                        Container(
                                          height: size.height*0.22,
                                          child: DefaultTabController(
                                            length: 2,
                                            initialIndex: 0,
                                            
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              mainAxisAlignment: MainAxisAlignment.center,

                                              children: [
                                                Container(
                                                  height: size.height*0.04,
                                                  child: TabBar(
                                                    labelColor: Colors.red,
                                                    unselectedLabelColor: Colors.black,
                                                    tabs: [
                                                      Tab(text: 'Lunch'),
                                                      Tab(text: 'Dinner',)
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: size.height*0.18,
                                                  
                                                  child: TabBarView(
                                                    children: [
                                                      Container(
                                                        height: size.height*0.2,
                                                        width: size.width*0.2,
                                                        
                                                        
                                                        child: ListView.builder(
                                                          itemCount: 5,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                                                          itemBuilder: (context, index) {
                                                            return GestureDetector(
                                                              onTap: () {
                                                                select=index;
                                                                setState(() {
                                                                  
                                                                },);
                                                              },
                                                              child: Container(
                                                                height: size.height*0.035,
                                                                width: size.width*0.2,
                                                                decoration: BoxDecoration(
                                                                  borderRadius: BorderRadius.circular(20),
                                                                  color: select==index?Colors.red:Colors.white,
                                                                ),
                                                                
                                                                child: Center(
                                                                  child: Text(timel[index].timel,style: TextStyle(color: Colors.black,fontSize: 20),),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        )
                                                      ),
                                                      Container(
                                                        height: size.height*0.22,
                                                        width: size.width*0.2,
                                                        
                                                        child: ListView.builder(
                                                          itemCount: 5,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                                                          itemBuilder: (context, index) {
                                                            return GestureDetector(
                                                              onTap: () {
                                                                select=index;
                                                                setState(() {
                                                                  
                                                                },);
                                                              },
                                                              child: Container(
                                                                height: size.height*0.035,
                                                                width: size.width*0.2,
                                                                decoration: BoxDecoration(
                                                                  borderRadius: BorderRadius.circular(20),
                                                                  color: select==index?Colors.red:Colors.white,
                                                                ),
                                                                
                                                                child: Center(
                                                                  child: Text(timed[index].timed,style: TextStyle(color: Colors.black,fontSize: 20),),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        )
                                                      )
                                                      
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
                                child: GestureDetector(
                                  child: Container(
                                  height: size.height*0.06,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),                        
                                    color: Colors.white,
                                    boxShadow: [BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0,
                                      blurStyle: BlurStyle.normal
                                    ),]
                                  ),
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Continue',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  showModalBottomSheet(context: context, 
                                  builder: ((context) {
                                    return StatefulBuilder(
                                        builder:((context, setState) {
                                          return Padding(
                                          
                                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                                            child: Container(
                                              height: size.height*0.45,
                                              width: size.width,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                ),
                                                
                                              ),
                                              child: Scaffold(
                                                appBar: AppBar(
                                                  elevation: 0,
                                                  backgroundColor: Colors.white,
                                                  iconTheme: IconThemeData(color: Colors.black),
                                                  title: Text('SELECT GUESTS',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black
                                                    ),
                                                  ),
                                                ),
                                                body: Container(
                                                  height: size.height*0.4,
                                                  width: size.width,
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                    padding: EdgeInsets.all(20),
                                                    child: Container(
                                                      height: size.height*0.1,
                                                      width: size.width,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Text('Flat 20% Off the Total Bill',
                                                            style: TextStyle(
                                                              fontSize: 22,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          
                                                          Icon(FontAwesomeIcons.gift,color: Colors.red,size: 22,)
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.all(20),
                                                    child: Container(
                                                      height: size.height*0.08,
                                                      width: size.width,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Text('Guests',
                                                            style: TextStyle(
                                                              fontSize: 22,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          
                                                          Row(
                                                            children: [
                                                              IconButton(
                                                                icon:Icon(FontAwesomeIcons.minus,),
                                                                iconSize: 22,
                                                                onPressed: () {
                                                                  if(guest>0){
                                                                    setState(() {
                                                                      guest=guest-1;
                                                                    },);
                                                                  }
                                                                },
                                                              ),
                                                              Text(guest.toString(),style: TextStyle(fontSize: 22,color: Colors.red),),
                                                              IconButton(
                                                                icon:Icon(FontAwesomeIcons.plus),
                                                                iconSize: 22,
                                                                onPressed: () {
                                                                  if(guest<=10){
                                                                    setState(() {
                                                                      guest=guest+1;
                                                                    },);
                                                                  }
                                                                },
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
                                child: GestureDetector(
                                  child: Container(
                                  height: size.height*0.06,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),                        
                                    color: Colors.white,
                                    boxShadow: [BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0,
                                      blurStyle: BlurStyle.normal
                                    ),]
                                  ),
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Continue',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  if(guest>0){
                                    
                                  showModalBottomSheet(context: context, isScrollControlled: true,
                                    builder: ((context) {
                                      return StatefulBuilder(builder: ((context, setState) {
                                        return Padding(padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                                          child: Container(
                                            height: size.height*0.5,
                                              width: size.width,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                ),
                                                
                                              ),
                                              child: Scaffold(
                                                appBar: AppBar(
                                                  elevation: 0,
                                                  backgroundColor: Colors.white,
                                                  iconTheme: IconThemeData(color: Colors.black),
                                                  title: Text('CONFIRM DETAILS',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black
                                                    ),
                                                  ),
                                                ),
                                                body: Container(
                                                  height: size.height*0.4,
                                                  width: size.width,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                    padding: EdgeInsets.all(20),
                                                    child: Container(
                                                      height: size.height*0.05,
                                                      width: size.width,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Icon(FontAwesomeIcons.peopleGroup,size: 18,color: Colors.black,),
                                                              Text(' '+guest.toString()+'Guests',
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.black
                                                            ),
                                                          ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Icon(FontAwesomeIcons.calendar,size: 18,color: Colors.black,),
                                                              Text('Date ',
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              
                                                              color: Colors.black
                                                            ),
                                                          ),
                                                          Text('time ',
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.black
                                                            ),
                                                          ),
                                                            ],
                                                          )
                                                          
                                                          
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.all(20),
                                                    child: Container(
                                                      height: size.height*0.24,
                                                      width: size.width,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20),
                                                        border: Border.all(color: Colors.red),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Text('Your Details',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                                          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                                            child: Text('name',style: TextStyle(fontSize: 20,color: Colors.black),),
                                                          ),
                                                          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                                            child: Text('phone',style: TextStyle(fontSize: 20,color: Colors.black),),
                                                          ),
                                                          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                                            child: Text('Email',style: TextStyle(fontSize: 20,color: Colors.black),),
                                                          ),
                                                          Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
                                child: GestureDetector(
                                  child: Container(
                                  height: size.height*0.06,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),                        
                                    color: Colors.white,
                                    boxShadow: [BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0,
                                      blurStyle: BlurStyle.normal
                                    ),]
                                  ),
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Confirm',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  
                                },
                                ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    
                                                  ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          ),
                                        );
                                      }));
                                    })
                                  );
                                  }
                                },
                                )
                                )
                                                    ],
                                                  )
                                                ),
                                              )
                                            ),
                                          );
                                        }) 
                                      );
                                  })
                                  );
                                },
                                ),
                              ),    
                            ],
                          ),
                        ),
                      );
                        },
                      );
                      
                    },
                  );
                },
                ),
                
                
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                child: GestureDetector(
                  child: Container(
                  height: size.height*0.08,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),                        
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal
                    ),]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      
                      children: [
                        SizedBox(width: size.width*0.02,),
                        Icon(
                          FontAwesomeIcons.list,size: 35,
                        ),
                        SizedBox(width: size.width*0.05,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Menu',
                              
                              style: TextStyle(
                                fontSize: 20,
                                
                              ),
                            ),
                            
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu()));
                },
                )
                
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                child: Container(
                  height: size.height*0.85,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),                        
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal
                    ),]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                      SizedBox(height: size.height*0.03,),
                      Text(
                        'About',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: size.height*0.15,
                        width: size.width,
                        child: Text(
                        restDoc['about'],
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 99, 98, 98),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      ),
                      Container(
                        height: size.height*0.08,
                        width: size.width,
                        
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.bowlFood,size: 35,),
                            SizedBox(width: size.width*0.03,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('CUISINE',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  restDoc['cuisine'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 98, 98),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.08,
                        width: size.width,
                        
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.hotel,size: 35,),
                            SizedBox(width: size.width*0.03,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('ESTABLISHMENT TYPE',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  restDoc['ET'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 98, 98),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.08,
                        width: size.width,
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.bowlFood,size: 35,),
                            SizedBox(width: size.width*0.03,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('MUST TRY',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  restDoc['MT'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 98, 98),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.12,
                        width: size.width,
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.calculator,size: 35,),
                            SizedBox(width: size.width*0.03,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('AVERAGE COST',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\u{20B9} '+restDoc['AC'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'includes Alcohol',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 99, 98, 98),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                      '\u{20B9}185* for a pint beer',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 99, 98, 98),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '*approx amount',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 99, 98, 98),
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                              ],

                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.25,
                        width: size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(FontAwesomeIcons.bowlFood,size: 35,),
                            SizedBox(width: size.width*0.03,),
                            Container(
                              height: size.height*0.24,
                              width: size.width*0.7,
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('FEAUTURES & FACILITIES',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  height: size.height*0.20,
                                  width: size.width*0.7,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.smoking,size: 15,),
                                              SizedBox(width: size.width*0.02,),
                                              Text('Smoking Area',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.watchmanMonitoring,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Valet Available',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.microphone,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Live Performance',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.wineBottle,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Full Bar Available',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.television,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Live Screening',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.fan,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Air Conditioned',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.car,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Parking',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.creditCard,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Cards Accepted',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.tent,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('OutDoor Seating',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.wallet,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Wallet Accepted',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                                
                              ],
                            ),
                            )
                          ],
                        ),
                      ),
                      
                      
                    ],
                  ),
                  ),
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                child: GestureDetector(
                  child: Container(
                  height: size.height*0.08,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),                        
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal
                    ),]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      
                      children: [
                        SizedBox(width: size.width*0.02,),
                        Icon(
                          FontAwesomeIcons.list,size: 35,
                        ),
                        SizedBox(width: size.width*0.05,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Reviews',
                              
                              style: TextStyle(
                                fontSize: 20,
                                
                              ),
                            ),
                            
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Reviews())));
                },
                )
                
              ),

            ],
          ),
          ),
        ),
        );
        },
      )
          
        
      );
      
    
  }

}
class Day{
  String day,date;
  Day(
    {required this.day,required this.date}
  );
}
List<Day>days=[
  Day(day: 'Sun',date: '5'),
  Day(day: 'Mon',date: '6'),
  Day(day: 'Tue',date: '7'),
  Day(day: 'Wed',date: '8'),
  Day(day: 'Thu',date: '9'),
  Day(day: 'Fri',date: '10'),
  Day(day: 'Sat',date: '11'),
];
class Timel{
  String timel;
  Timel(
    {required this.timel}
  );
}
List<Timel>timel=[
  Timel(timel: '12:00 pm'),
  Timel(timel: '12:30 pm'),
  Timel(timel: '01:00 pm'),
  Timel(timel: '01:30 pm'),
  Timel(timel: '2:00 pm'),
];
class Timed{
  String timed;
  Timed(
    {required this.timed}
  );
}
List<Timed>timed=[
  Timed(timed: '07:00 pm'),
  Timed(timed: '07:30 pm'),
  Timed(timed: '08:00 pm'),
  Timed(timed: '08:30 pm'),
  Timed(timed: '09:00 pm'),
];