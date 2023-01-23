import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DataBaseServices{
  
  
  Future createUserData(String username,String firstname,String lastname,String phone,String email)async{
    
    final  docUser=FirebaseFirestore.instance.collection('users').doc();
    
    return await docUser.set({'username':username,'firstname': firstname,'lastname': lastname, 'phone': phone,'email':email});
  }
  
}


