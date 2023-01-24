import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      print(UserData.name);
      print(FirebaseAuth.instance.currentUser?.uid.toString());
      
      
    }
    else{
      print("no");
      print(FirebaseAuth.instance.currentUser?.uid.toString());

    }
  }
  
}


