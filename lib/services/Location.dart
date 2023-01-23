import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
class Location{

  String? _currentAddress;
  Position? _currentPosition;

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


  Future<void> _getCurrentPosition(context) async{
    final hasPermission=await _handleLocationPermission(context);

    if(!hasPermission)return;
    await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high
    ).then((Position position) {
      _currentPosition=position;
      _getAddressFromLatLng(_currentPosition!);
    } ).catchError((e){
      debugPrint(e);
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async{
    await placemarkFromCoordinates(
      _currentPosition!.latitude,_currentPosition!.longitude
    ).then((List<Placemark> placemarks) {
      Placemark place =placemarks[0];
      _currentAddress=place.locality;
    } ).catchError((e){
      debugPrint(e);
    });
  }

}