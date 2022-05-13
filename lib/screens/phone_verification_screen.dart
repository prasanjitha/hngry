// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hngry/screens/confirm_screen.dart';
import 'package:hngry/widgets/appbar_skipfor_now.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationScreen> createState() => _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  bool _isObscure = true;
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        CustomAppBar(),
            const Text(
              'Enter your phone number',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF1A1824)),
            ),

            TextField(
              controller: phone,
                cursorColor: Color(0xFF32C47C),
                decoration: InputDecoration(
                  suffixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/splash/rounded_close.png',
                  width: 20,
                  height: 12,
                 
                ),
              ),
                  labelText: 'Enter your phone number',
                  prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/splash/Group980.png',
                  width: 20,
                  height: 12,
                 
                ),
              ),

              
                ),
                

                
                ),
              
            InkWell(
              onTap: () {
                
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ConfirmScreen()));
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
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
