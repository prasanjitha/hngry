// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF32C47C),
      body: Center(
        child:  Image.asset('assets/splash/done.png',width: 74,height: 74,),
      ),
      
    );
  }
}