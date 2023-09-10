import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/Data/User.dart';
import 'package:myapp/MyAccount.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/const.dart';
import 'package:myapp/order.dart';
class Deliver extends StatefulWidget {
  const Deliver({super.key});

  @override
  State<Deliver> createState() => _DeliverState();
}
class _DeliverState extends State<Deliver> {
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
                      UserData.currentAddress,
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
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
              //searchBar
              Container(
                height: size.height / 15,
                width: size.width / 1.1,
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
                          hintText: "Restaurant name, cuisine, or a dish..."),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height/50,),
              SizedBox(
                width: size.width,
                child: Row(
                  children: [
                    SizedBox(width: size.width*0.03,),
                    Text(
                      'In the spotlight',
                      
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
                height: size.height*0.25,
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
              SizedBox(height: size.height/50,),
              SizedBox(
                width: size.width,
                child: Row(
                  children: [
                    SizedBox(width: size.width*0.03,),
                    Text(
                      'Eat what makes you happy',
                      
                      style: TextStyle(
                        
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height*0.5,
                width: size.width,
                child: GridView.builder(
                  itemCount: 16,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      child: Container(
                      height: size.height*0.16,
                      width: size.width/5,
                      child: Column(
                        children: [
                          Container(
                            height: size.height*0.09,
                            width: size.width/5,
                            child: CircleAvatar(
                              radius: size.height*0.045,
                              backgroundImage: NetworkImage(foodItemList[index].imageUrl),
                            ),
                          ),
                          Text(foodItemList[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13)
                            ),
                          
                        ],
                      ),
                    ),
                    onTap: () {
                      
                    },
                    );
                  })
                  ),
              ),
              SizedBox(height: size.height/50,),
              SizedBox(
                width: size.width,
                child: Row(
                  children: [
                    SizedBox(width: size.width*0.03,),
                    Text(
                      'Recommended for you',
                      
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
                height: size.height*0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(

                      child: Container(
                        
                        width: size.width*0.4,
                        margin: EdgeInsets.all(10),// add margin 
                        padding: EdgeInsets.only(bottom: 20),// add padding
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: size.width*0.4,
                              height: size.height*0.18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),

                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Burger King",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),
                                Text("Burger, Rolls, Fries",style: TextStyle(fontSize: 16,color: Colors.black87,),),
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Order()));
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: size.height/50,),
              SizedBox(
                width: size.width,
                child: Row(
                  children: [
                    SizedBox(width: size.width*0.03,),
                    Text(
                      ' ${restaurantList.length} restaurants around you',
                      
                      style: TextStyle(
                        
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height*3,
                width: size.width,
                child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 18.0),
                      child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => Order())));
                      },
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(18),
                        child: Container(
                          height: size.height*0.3,
                          width: size.width,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(18),
                                    topRight: Radius.circular(18),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(restaurantList[index].imageUrl),
                                    fit: BoxFit.cover
                                  ),
                                ),
                                height: size.height*0.2,
                                width: size.width*0.9,
                                
                              ),
                              Container(
                                margin: const EdgeInsets.only(left:5,right: 2),
                                height: size.height*0.05,
                                width: size.width*0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    
                                    Text(
                                      restaurantList[index].title,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      height: size.height*0.027,
                                      width: size.width*0.12,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green,
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                          restaurantList[index].rating,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Icon(FontAwesomeIcons.solidStar,size: 13,color: Colors.white,),
                                        ],
                                      )
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left:7,right: 2),
                                height: size.height*0.02,
                                width: size.width*0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      restaurantList[index].locations,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 38, 37, 37),
                                      ),
                                    ),
                                    Text(
                                      '\u{20B9}${restaurantList[index].price} for one',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 38, 37, 37),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    );
                  }),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}