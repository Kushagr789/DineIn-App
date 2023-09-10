import 'package:flutter/material.dart';
import 'package:myapp/Confirm.dart';
import 'package:intl/intl.dart';
import 'package:myapp/Data/RestData.dart';

class Booking extends StatefulWidget {

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  int selectDay=0,selecPeople=0,selectTime=-1;
  bool selected=false;
  var person,timeSelect,date1,month;

  @override
  void initState() {
    // TODO: implement initState
    person="1";
    month="";
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var time=DateTime.now();
    var m=time.month;
    var day=DateFormat.E().format(time);
    var date=DateFormat.d().format(time);
    var timeSlot=time.hour;


    date1=(int.parse(date)).toString();




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
            Text("Book a seat",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
            Text(RestaurantData.name,style: TextStyle(fontSize: 18,color: Colors.black,),),
            ],
          ),
        ),

      ),
    body: Container(
    color: Color.fromRGBO(234, 231, 231, 30),
    width: size.width,
    height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("RESERVATION DETAILS",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.black54),),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            padding: EdgeInsets.only(left: 15,top: 20,bottom: 20),
            height: size.height*0.5,
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
                Text("What day?",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                Container(
                  height: size.height*0.1,
                  width: double.infinity,
                  child: ListView.builder(itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          selectDay=index;
                          date1=(int.parse(date)+index).toString();
                          month=(((int.parse(date)+index)>30)?DataConst().Month[(m)%12]:DataConst().Month[(m-1)%12]).toString();
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: index==selectDay?Colors.red:Colors.grey,),
                            boxShadow: [
                              BoxShadow(color: index==selectDay?Colors.red:Colors.grey),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        height: size.height*0.1,
                        width: size.width*0.3,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(index==0?"Today":index==1?"Tommorow":DataConst().weekDay[(int.parse((time.weekday.toString()))+index-1)%7],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: index==selectDay?Colors.red:Colors.black),),
                            Text("${(int.parse(date)+index)!=31?(int.parse(date)+index)%31:(int.parse(date)+index)%30} ${((int.parse(date)+index)>30)?DataConst().Month[(m)%12]:DataConst().Month[(m-1)%12]}",style: TextStyle(fontSize: 12,color: index==selectDay?Colors.red:Colors.black87),),
                          ],
                        ),
                        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),

                      ),
                    );
                  },
                  itemCount: 15,
                  scrollDirection: Axis.horizontal,
                  ),
                ),
                Text("How many people?",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                Container(
                  height: size.height*0.08,
                  width: double.infinity,
                  child: ListView.builder(itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          selecPeople=index;
                          person=(index+1).toString();
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: index==selecPeople?Colors.red:Colors.grey,),
                            boxShadow: [
                              BoxShadow(color: index==selecPeople?Colors.red:Colors.grey),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        height: size.height*0.1,
                        width: size.width*0.2,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Center(
                          child: Text((index+1).toString(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: index==selecPeople?Colors.red:Colors.black),),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),

                      ),
                    );
                  },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Text("What time?",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                Container(
                  height: size.height*0.08,
                  width: double.infinity,
                  child: ListView.builder(itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          selectTime=index;
                          selected=true;
                          timeSelect=DataConst().timeS[(timeSlot+index-9)%DataConst().timeS.length].toString();
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: index==selectTime?Colors.red:Colors.grey,),
                            boxShadow: [
                              BoxShadow(color: index==selectTime?Colors.red:Colors.grey),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        height: size.height*0.08,
                        width: size.width*0.3,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Center(
                          child: Text(
                            timeSlot>=9?DataConst().timeS[(timeSlot+index-9)%DataConst().timeS.length]:"",

                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: index==selectTime?Colors.red:Colors.black),),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),

                      ),
                    );
                  },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
          Text("SPECIAL OFFERS",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.black54),),
      Container(
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        padding: EdgeInsets.all(10),
        height: size.height*0.08,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey),
            ],
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        
        child: Expanded(
          child: Center(
            child: Text(selected==true?"Get flat 30% off on Gold membership":"Select your preferred time slot and we will get you the best offers at this restaurant",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,

            ),
            textAlign: TextAlign.center,),
          ),
        ),
      ),
          SizedBox(height: size.height*0.05,)
        ],
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
          child: InkWell(
            onTap: (){
              RestaurantData.person=person.toString();
              RestaurantData.date=date1.toString();
              RestaurantData.timeSelect=timeSelect.toString();
              RestaurantData.mon=month.toString();

              Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmBook()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: selected==true?Colors.red:Colors.grey),
                ],
                color: selected==true?Colors.red:Colors.grey
              ),
              child: Center(
                child: Text(selected==true?"Proceed":"Select all options to proceed",
                style: TextStyle(fontSize: 22,color: selected==true?Colors.white:Colors.white60),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DataConst{
  List weekDay=[
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun"
  ];
  List timeS=[
    "10:00 AM",
    "11:00 AM",
    "12:00 PM",
    "01:00 PM",
    "02:00 PM",
    "03:00 PM",
    "04:00 PM",
    "05:00 PM",
    "06:00 PM",
    "07:00 PM",
    "08:00 PM",
    "09:00 PM",
    "10:00 PM",
    "11:00 PM",
  ];
  List Month=[
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];
}
