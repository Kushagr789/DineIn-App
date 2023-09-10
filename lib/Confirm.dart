import 'package:flutter/material.dart';
import 'package:myapp/Data/RestData.dart';
import 'package:myapp/services/database.dart';
class ConfirmBook extends StatefulWidget {
  const ConfirmBook({super.key});

  @override
  State<ConfirmBook> createState() => _ConfirmBookState();
}

class _ConfirmBookState extends State<ConfirmBook> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(234, 231, 231, 30),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,size: 35,color: Colors.black,)),
        title: Container(
          width: size.width*0.6,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Confirm seat",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
              Text("Burger King",style: TextStyle(fontSize: 18,color: Colors.black,),),
            ],
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(234, 231, 231, 30),
          width: size.width,
          height: size.height*1.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("RESERVATION DETAILS",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.black54),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                padding: EdgeInsets.all(10),
                height: size.height*0.2,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Icon(Icons.calendar_month,size: 22,color: Colors.red,),
                        SizedBox(width: 10,),
                        Text("${RestaurantData.date} ${RestaurantData.mon} at ${RestaurantData.timeSelect}",style: TextStyle(fontSize: 18,color: Colors.black),)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Icon(Icons.person,size: 22,color: Colors.red,),
                        SizedBox(width: 10,),
                        Text("Number of guests: ${RestaurantData.person}",style: TextStyle(fontSize: 18,color: Colors.black),)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Icon(Icons.location_on,size: 22,color: Colors.red,),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(RestaurantData.name,style: TextStyle(fontSize: 18,color: Colors.black),),
                            Text(RestaurantData.address,style: TextStyle(fontSize: 16,color: Colors.black54),),
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Text("Edit slot",style: TextStyle(fontSize: 16,color: Colors.red),),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                height: size.height*0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.add_circle_outline,color: Colors.black,size: 22,),
                            SizedBox(width: 10,),
                            Text("Add an occasion",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.black,size: 18,)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.edit_note,color: Colors.black,size: 22,),
                            SizedBox(width: 10,),
                            Text("Special requests",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.black,size: 18,)
                      ],
                    ),
                  ],
                ),
              ),
              Text("YOUR DETAILS",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.black54),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                height: size.height*0.09,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kush Saxena",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                        Text("6396947106",style: TextStyle(fontSize: 16,color: Colors.black54),),
                      ],
                    ),
                    InkWell(
                      child: Text("Edit",style: TextStyle(fontSize: 18,color: Colors.red),),
                    )
                  ]
                )
              ),
              Text("TERMS AND CONDITIONS",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.black54),),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                height: size.height*0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
            ),
            ]
          )
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height*0.08,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey),
          ],

        ),
        padding: EdgeInsets.symmetric(vertical: 7,horizontal: 10),
        child: Expanded(
          child: GestureDetector(
            onTap: (){
              DataBaseServices().bookSeat();

            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.red),
                  ],
                  color: Colors.red
              ),
              child: Center(
                child: Text("Confirm yout seat",
                  style: TextStyle(fontSize: 22,color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }
}
