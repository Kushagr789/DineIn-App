import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class FoodHistory extends StatefulWidget {
  const FoodHistory({super.key});

  @override
  State<FoodHistory> createState() => _FoodHistoryState();
}

class _FoodHistoryState extends State<FoodHistory> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white60,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white60,
            statusBarIconBrightness: Brightness.dark
        ),
        elevation: 0,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(  Icons.arrow_back,size: 26,color: Colors.black,)),
        title: Text("Your orders",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
      body:  Container(
        color: Color.fromRGBO(234, 231, 231, 30),
        height: size.height,
        child: ListView.builder(itemBuilder: (context,index){
          return Container(
            height: size.height*0.27,
            width: double.infinity,

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height*0.07,
                      width: size.height*0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: NetworkImage("https://assets.architecturaldigest.in/photos/63733ec2a2dd6ea6560eb6da/16:9/w_1615,h_908,c_limit/Ditas%20Interior%20Image%20-%201%20(8).png"),
                              fit: BoxFit.cover)
                      ),

                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Gola Sizzlers",style: TextStyle(fontSize: 20,color: Colors.black),),
                        Text("Raj Nagar",style: TextStyle(fontSize: 18,color: Colors.black54),)
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Name: Kush Saxena",style: TextStyle(fontSize: 18,color: Colors.grey),),
                    Text("Guest: 1",style: TextStyle(fontSize: 18,color: Colors.grey),)
                  ],
                ),
                Text("Items ordered",style: TextStyle(fontSize: 18,color: Colors.grey),),
                Text("2023-06-07, 12:00 PM",style: TextStyle(fontSize: 18,color: Colors.grey),),
                Text("Booking Completed",style: TextStyle(fontSize: 18,color: Colors.green),)
              ],
            ),
          );
        },
          itemCount: 5,
        ),

      ),

    );
  }
}
