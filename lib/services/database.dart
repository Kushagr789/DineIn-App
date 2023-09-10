import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/Data/RestData.dart';
import 'package:myapp/Data/User.dart' ;

class DataBaseServices{
  
  Future createRestData(String name) async{
    final docRes=FirebaseFirestore.instance.collection('Restaurants').doc(name);
    return await docRes.set({'name':"",
    'BS':"",
    'Menu':[""],
    'Reviews':{'average':"",'bad':"",'excelent':"",'good':"",'poor':""},
    'about':"",
    'address':"",
    'avgcost':"",
    'cuisine':"",
    'rating':"",
    'reviews':"",
    'timeEnd':"",
    'timestart':"",
    'type':"",
    'url':""
    


    });
  }
  Future createUserData(String username,String firstname,String lastname,String phone,String email,String? uid)async{
    
    final  docUser=FirebaseFirestore.instance.collection('users').doc(uid);
    
    return await docUser.set({'username':username,'firstname': firstname,'lastname': lastname, 'phone': phone,'email':email});
  }
  Future<void> getInfo() async{
    final docRef= FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser?.uid.toString());
    final snapshot=await docRef.get();
    if(snapshot.exists)
    {
      UserData.name=snapshot['firstname'];
      print(UserData.name);
      
      
      
    }
    else{
      print("no");
      print(FirebaseAuth.instance.currentUser?.uid.toString());

    }
  }

  Future<void> kush() async{
    final docref1=FirebaseFirestore.instance.collection('Restaurants').doc('Tamasha');
    final snapshot1=await docref1.get();
    if(snapshot1.exists)
    {
      RestaurantData.name=snapshot1['name'];
      RestaurantData.about=snapshot1['about'];
      RestaurantData.avgCost=snapshot1['avgcost'];
      RestaurantData.cuisine=snapshot1['cuisine'];

      RestaurantData.rating=snapshot1['rating'];
      RestaurantData.review=snapshot1['reviews'];
      RestaurantData.address=snapshot1['address'];

      RestaurantData.type=snapshot1['type'];
      RestaurantData.url=snapshot1['url'];
      RestaurantData.Menu=snapshot1['Menu'];
      RestaurantData.reviews=snapshot1['Reviews'];



    }
  }
  Future<void> getRestData() async{
    final rest=FirebaseFirestore.instance.collection('Restaurants').get().then((value){
      for(var docSnap in value.docs){
        RestaurantData.RestList.add(docSnap.data());
      }

    });
    final near=FirebaseFirestore.instance.collection('Restaurants').where('address',isEqualTo: "Connaught Place, Delhi").get().then((value){
      for(var docSnap in value.docs){
        RestaurantData.NearRest.add(docSnap.data());
      }
    });


    final trend=FirebaseFirestore.instance.collection('Restaurants').where('rating',isGreaterThan: 4.2 ).get().then((value){
      for(var docSnap in value.docs){
        RestaurantData.TrendRest.add(docSnap.data());
      }
    });










  }
  Future<void> bookSeat() async{

    final Map<String,dynamic> data1={
      "order":{
        "name":RestaurantData.name,
        "address":RestaurantData.address,
        "person":RestaurantData.person,
        "timeSelect":RestaurantData.timeSelect,
        "dateSelect":(RestaurantData.date+RestaurantData.mon),
        "occasion":RestaurantData.occasion,
        "specRqst":RestaurantData.specRqst,
      }
    };
    FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser?.uid.toString()).update(data1);

  }
  
}


