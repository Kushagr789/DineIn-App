import 'dart:ui';

import 'package:flutter/material.dart';
class Billing extends StatefulWidget {
  const Billing({super.key});

  @override
  State<Billing> createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      body:  Stack(
        children: [
          SingleChildScrollView(
        child: Container(
        height: size.height*1.15,
        width: size.width,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10),
              child: Container(
                height: size.height*0.3,
                width: size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Your Order',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    ListView.builder(
                      itemCount: 5,scrollDirection: Axis.vertical,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          height: size.height*0.04,
                          width: size.width,
                          child: Text('      name1                                                    N',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        );
                      }))
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
              child: Container(
                height: size.height*0.3,
                width: size.width,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Bill Summary',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    ListView.builder(
                      itemCount: 5,scrollDirection: Axis.vertical,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          height: size.height*0.04,
                          width: size.width,
                          child: Text('      name1                             pricexN    price',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        );
                      })),
                    Text('Grand Total                           total',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: size.height*0.38,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text('Your Details',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    ),
                    Container(
                      width: size.width,
                      child: TextField(
                        onChanged: (value) {
                          
                        },
                        decoration: InputDecoration(
                          labelText: 'Your Name'
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      child: TextField(
                        onChanged: (value) {
                          
                        },
                        decoration: InputDecoration(
                          labelText: 'Contact No.'
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      child: TextField(
                        onChanged: (value) {
                          
                        },
                        decoration: InputDecoration(
                          labelText: 'House No./Building Name'
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      child: TextField(
                        onChanged: (value) {
                          
                        },
                        decoration: InputDecoration(
                          labelText: 'Area/Street/Locality'
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      
                      child: TextField(
                        onChanged: (value) {
                          
                        },
                        decoration: InputDecoration(
                          labelText: 'Landmark(*near Shri Ganesh Temple)',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
              child: GestureDetector(
                child: Container(
                  height: size.height*0.07,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Confirm & Pay',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
              )
            ),
      )
        ],
      )
      
    );
  }
}