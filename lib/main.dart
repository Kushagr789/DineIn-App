
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/HomePage.dart';
import 'package:myapp/LoginPage.dart';
import 'package:myapp/services/Location.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MyApp()
  );
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocationGet().getCurrentPosition(context);
    
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 225, 34, 97)
      ),
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser==null? LoginPage():HomePage() ,       
    );
  }
}
