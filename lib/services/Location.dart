import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:myapp/Data/User.dart';
class LocationGet{

  

  Future<bool> _handleLocationPermission(context) async{
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled=await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Location services are disabled.Please enable the services'))
      );
      return false;
    }

    permission=await Geolocator.checkPermission();
    if(permission==LocationPermission.denied){
      permission=await Geolocator.requestPermission();
      if(permission==LocationPermission.denied){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Location permissions are denied'),)
        );
        return false;
      }
    }
    if(permission==LocationPermission.deniedForever){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Location permissions are permanently denied, we cannot request permissions.'))
      );
      return false;
    }
    return true;
  }


  Future<void> getCurrentPosition(context) async{
    final hasPermission=await _handleLocationPermission(context);

    if(!hasPermission)return;
    await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high
    ).then((Position position) {
       
       UserData.currentPosition=position;
      _getAddressFromLatLng(UserData.currentPosition!);
    } ).catchError((e){
      debugPrint(e);
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async{
    await placemarkFromCoordinates(
      UserData.currentPosition!.latitude,UserData.currentPosition!.longitude
    ).then((List<Placemark> placemarks) {
      Placemark place =placemarks[0];
      UserData.currentAddress='${place.locality}'+', '+'${place.administrativeArea}';
      print(UserData.currentAddress);
    } ).catchError((e){
      debugPrint(e);
    });
  }

}