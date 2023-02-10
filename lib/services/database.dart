import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/Data/RestData.dart';
import 'package:myapp/Data/User.dart' ;

class DataBaseServices{
  
  
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
      
      
      
    }
    else{
      print("no");
      print(FirebaseAuth.instance.currentUser?.uid.toString());

    }
  }

  Future<void> getRestData() async{
    final docref1=FirebaseFirestore.instance.collection('Restaurants').doc('Tamasha');
    final snapshot1=await docref1.get();
    if(snapshot1.exists)
    {
      RestaurantData.name=snapshot1['name'];
      RestaurantData.about=snapshot1['about'];
      RestaurantData.avgCost=snapshot1['avgcost'];
      RestaurantData.cuisine=snapshot1['cuisine'];
      RestaurantData.BS=snapshot1['BS'];
      RestaurantData.rating=snapshot1['rating'];
      RestaurantData.review=snapshot1['reviews'];
      RestaurantData.address=snapshot1['address'];
      RestaurantData.TS=snapshot1['timestart'];
      RestaurantData.TE=snapshot1['timeEnd'];
      RestaurantData.type=snapshot1['type'];
      RestaurantData.url=snapshot1['url'];
      RestaurantData.Menu=snapshot1['Menu'];
      RestaurantData.reviews=snapshot1['Reviews'];
    
      

    }
  }
  
}


