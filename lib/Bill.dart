import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Bill extends StatefulWidget {
  const Bill({super.key});

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Color.fromRGBO(234, 231, 231, 30),
      leading: Icon(Icons.arrow_back,size: 35,color: Colors.black,),
      title: Container(
        width: size.width*0.6,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Burger King",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),

          ],
        ),
      ),

    ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: (size.height*1.5)+size.height*0.11*5,
          color: Color.fromRGBO(234, 231, 231, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  height: size.height*0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.watch_later_rounded,color: Colors.yellow,size: 24,),
                        SizedBox(width: 8,),
                        Text("Delivery in 45-50 min",style: TextStyle(color: Colors.black,fontSize: 18),)
                      ],
                    ),
                  )
              ),
              Text("ITEM(S) ADDED",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.black54),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                height: size.height*0.105*5,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: ListView.builder(
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Container(
                      
                      height: size.height*0.1,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.circle,color: Colors.green,size: 14,),
                                    Text("Kadai Paneer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)

                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.red),
                                      boxShadow: [
                                        BoxShadow(color: Colors.red),
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  height: size.height*0.04,
                                  width: size.width*0.24,
                                  padding: EdgeInsets.symmetric(horizontal: 10),

                                  child: Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        InkWell(child: Icon(FontAwesomeIcons.minus,color: Colors.red,size: 14,)),
                                        Text("1",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                                        InkWell(child: Icon(FontAwesomeIcons.plus,color: Colors.red,size: 14,)),

                                      ],
                                    ),
                                  ),

                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 15,),
                                    Text("389",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)

                                  ],
                                ),
                                Text("389",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)

                              ],
                            ),

                          ],
                        ),
                      ),
                    );
                  },
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
                            Text("Add more item(s)",style: TextStyle(fontSize: 18,color: Colors.black),)
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
                            Text("Add cooking instructions",style: TextStyle(fontSize: 18,color: Colors.black),)
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.black,size: 18,)
                      ],
                    ),
                  ],
                ),
              ),
              Text("BILL SUMMARY",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.black54),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height*0.11,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Subtotal",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                Text("1,054",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(

                                  children: [
                                    Icon(FontAwesomeIcons.moneyBill,size: 20,),
                                    SizedBox(width: 7,),
                                    Text("GST and restaurant charges",style: TextStyle(fontSize: 16,color: Colors.black),)
                                  ],
                                ),
                                Text("86.62",style: TextStyle(fontSize: 16,color: Colors.black),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(

                                  children: [
                                    Icon(FontAwesomeIcons.personBiking,size: 20,),
                                    SizedBox(width: 10,),
                                    Text("Delivery partner fee",style: TextStyle(fontSize: 16,color: Colors.black),)
                                  ],
                                ),
                                Text("40",style: TextStyle(fontSize: 16,color: Colors.black),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Grand Total",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("1180.62",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  )
                ),
              ),
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
                            Text("Your Details",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                            Text("Kush Saxena, 6396947106",style: TextStyle(fontSize: 16,color: Colors.black87),),
                          ],
                        ),
                        InkWell(
                          child: Text("Edit",style: TextStyle(fontSize: 18,color: Colors.red),),
                        )
                      ]
                  )
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  height: size.height*0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Your ADDRESS",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                      Container(
                        height: size.height*0.08,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "House number/ Block *",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red,width: 1)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey,width: 1)
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height*0.08,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Floor *",
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red,width: 1)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey,width: 1)
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height*0.08,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Building *",
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red,width: 1)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey,width: 1)
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height*0.08,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Nearby landmark (optional)",
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red,width: 1)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey,width: 1)
                            ),
                          ),
                        ),
                      ),


                    ],

                  ),
              ),
              Text("CANCELLATION POLICY",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.black54),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                height: size.height*0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Center(
                  child: Text("100% cancellation fee will be applicable if you decide to cancel the order at any time after order placement.",
                    style: TextStyle(fontSize: 16,color: Colors.black54),
                      ),
                ),
              ),
            ],
          ),
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
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.red),
                ],
                color: Colors.red
            ),
            child: Center(
              child: Text("Place Order",
                style: TextStyle(fontSize: 22,color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
