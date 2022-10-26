import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/services/database.dart';
import 'package:myapp/Register.dart';
import 'package:myapp/LoginPage.dart';

class AuthService{
  final FirebaseAuth _auth= FirebaseAuth.instance;
  Future createNewUser(String firstname,String lastname,String phone,String email,String password) async{
    try{
      UserCredential result=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user=result.user;
      await DataBaseServices().createUserData(firstname, lastname, phone, user!.uid);
      return user;
    }catch(e){
      print(e.toString());
    }
  }


  
  

  
  
}