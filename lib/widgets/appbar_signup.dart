// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // ignore: prefer_const_constructors
        Text('Sign up'),
          Image.asset('assets/splash/Logoicon.png',width: 24,height: 16.8,),
            Image.asset('assets/splash/close.png',width: 24,height: 16.8,),
          
      ],
      
    );
  }
}