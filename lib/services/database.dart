import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseServices{
  final CollectionReference userlist=FirebaseFirestore.instance.collection('users');

  Future createUserData(String firstname,String lastname,String phone,String uid)async{
    return await userlist.doc(uid).set({'firstname': firstname,'lastname': lastname, 'phone': phone});
  }
  Future getUserList() async{
  List itemsList=[];
  try{
    await userlist.get().then((querySnapshot){
      querySnapshot.docs.forEach((element) {
        itemsList.add(element.data);
      });
    });
    return itemsList;
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}


