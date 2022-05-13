// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hngry/screens/skip_screen_two.dart';

class NavigationScreenFive extends StatelessWidget {
  const NavigationScreenFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:50,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height:30),

            Image.asset('assets/splash/Logoicon.png',width: 24,height: 16.8,),
            const SizedBox(height:60),
            Image.asset('assets/splash/Image.png',width: 270,height: 234.58,),
            SizedBox(height:40),

            const Text(
              'Welcome to hngry',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF1A1824)),
            ),
            SizedBox(height:20),

            const Expanded(
              child: Text(
                'Craving for your favourite food? Takeaway will deliver it, wherever you are!',
                style: TextStyle(fontSize: 16, color: Color(0xFF1A1824)),
              ),
            ),
          
Row(
  children: [
    Image.asset('assets/splash/Group980.png'),
            SizedBox(width: 10,),

    Image.asset('assets/splash/chevron.png'),
            SizedBox(width:20),

    Text("+44", style: TextStyle(fontSize: 15, color: Color(0xFF1A1824))),
            SizedBox(width:20),

    Text("Enter your phone number", style: TextStyle(fontSize: 15, color: Color(0xFF242134))),
  ],
),
Divider(color:  Color(0xFF242134),),

              
            SizedBox(height:10),

    Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color:Color(0xFFD8D9DD),
          borderRadius: BorderRadius.all(
            Radius.circular(3),
          ),
        ),
        height: 5,
        width: 134,
      ),
          ],
        ),
      ), 
    );
  }
}
