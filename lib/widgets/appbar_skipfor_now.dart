// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
           Image.asset('assets/splash/back_arrow.png',width: 24,height: 16.8,),
          Image.asset('assets/splash/Logoicon.png',width: 24,height: 16.8,),
          const Text('Skip for now',style: TextStyle(fontSize: 14,color: Color(0xFF1A1824)),)
          
      ],
      
    );
  }
}