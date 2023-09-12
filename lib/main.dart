
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Bill.dart';
import 'package:myapp/Booking.dart';
import 'package:myapp/Confirm.dart';
import 'package:myapp/Data/RestData.dart';

import 'package:myapp/HomePage.dart';
import 'package:myapp/LoginPage.dart';
import 'package:myapp/MyAccount.dart';
import 'package:myapp/RestaurantHome.dart';
import 'package:myapp/Splash.dart';
import 'package:myapp/deliver.dart';
import 'package:myapp/order.dart';

import 'package:myapp/services/Location.dart';
import 'package:myapp/services/database.dart';
import 'package:myapp/slotHistory.dart';

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
    //LocationGet().getCurrentPosition(context);
    DataBaseServices().getRestData();
    
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 225, 34, 97)
      ),
      debugShowCheckedModeBanner: false,
      home: Splash() ,


    );
  }
}
