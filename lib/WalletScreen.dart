import 'package:flutter/material.dart';
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("You don't any have wallet",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
      )
    );
  }
}