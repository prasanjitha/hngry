// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hngry/screens/skip_screen_four.dart';

class NavigationScreenThree extends StatelessWidget {
  const NavigationScreenThree({Key? key}) : super(key: key);

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
            Image.asset('assets/splash/Image03.png',width: 270,height: 234.58,),
            SizedBox(height:40),

            const Text(
              'Enjoy the experience',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF1A1824)),
            ),
            SizedBox(height:20),

            const Expanded(
              child: Text(
                'Don\'t feel like going out? No problem, we\'ll deliver your order. In bed! :)',
                style: TextStyle(fontSize: 16, color: Color(0xFF1A1824)),
              ),
            ),
            SizedBox(height:20),

            Image.asset('assets/splash/SliderdotsLast.png'),
            SizedBox(height:20),

              InkWell(
      onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigationScreenFour()));
      // Call your onPressed or onTap function here
      },
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xFF32C47C),
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        height: 46,
        width: 315,
        child: const Text(
          'Next',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    ),
                  InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigationScreenFour()));
     // Call your onPressed or onTap function here
      },
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        height: 46,
        width: 315,
        child: const Text(
          'Skip',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    ),
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
