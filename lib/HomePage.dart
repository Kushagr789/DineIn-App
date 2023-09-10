import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



import 'package:myapp/HomeScreen.dart';
import 'package:myapp/MyAccount.dart';
import 'package:myapp/OrderScreen.dart';

import 'package:myapp/WalletScreen.dart';
import 'package:myapp/const.dart';
import 'package:myapp/deliver.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List screens=[
    HomeScreen(),
    Deliver(),
    MyAccount(),
    MyAccount(),
    ];
    int currenIndex=0;
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: currenIndex,
        onTap: (val){
          setState(() {
            currenIndex=val;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bowlFood,
              color: Colors.black,
            ),
            activeIcon: Icon(
              FontAwesomeIcons.bowlFood,
              color: Colors.red,
            ),
            label: "Go Out",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.motorcycle,
              color: Colors.black,),
              activeIcon: Icon(
              FontAwesomeIcons.motorcycle,
              color: Colors.red,),
              label: "Delivery",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.wallet,
              color: Colors.black,
            ),
            activeIcon: Icon(
              FontAwesomeIcons.wallet,
              color: Colors.red,
            ),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.star,
              color: Colors.black,
            ),
            activeIcon: Icon(
              FontAwesomeIcons.user,
              color: Colors.red,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}