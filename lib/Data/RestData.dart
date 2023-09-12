

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RestaurantData{
  static List<dynamic> RestList=[];
  static List<dynamic>NearRest=[];
  static List<dynamic>TrendRest=[];
  static String name="";
  static String url="";
  static String cuisine="";
  static String date="";
  static String person="";
  static List<dynamic> Menu=[];
  static String about="";
  static String type="";
  static String timeSelect="";
  static String avgCost="";
  static Map<String,dynamic> reviews={};
  static String address="";
  static String rating="";
  static String review="";
  static String mon="";
  static String occasion="";
  static String specRqst="";

  static List<String> facility=[
    "Parking",
    "Air Conditioned",
    "Wifi",
    "Wallet Pay",
    "Dinout Pay",
    "Music",
    "Books",
    "Barbecue"
  ];
  static List ic=<IconData>[
    Icons.local_parking,
    Icons.ac_unit,
    Icons.wifi,
    Icons.wallet,
    Icons.dining,
    Icons.music_note,
    Icons.menu_book_sharp,
    Icons.wine_bar

  ];

}