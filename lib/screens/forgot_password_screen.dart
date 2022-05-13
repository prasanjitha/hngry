// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hngry/screens/confirm_screen.dart';
import 'package:hngry/widgets/appbar_arrow.dart';

import 'check_email_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  TextEditingController email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        CustomAppBar()    ,
            const Text(
              'Forgot password',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF1A1824)),
            ),
                         Text(
                  'Enter your email and we\'ll send you instructions on how to reset your password.',
                  style: TextStyle(fontSize: 14, color: Color(0xFF1A1824)),
                ),
            TextFormField(
              cursorColor: Colors.black,
              controller: email,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your email address',
              ),
            ),
            InkWell(
              onTap: () {
                
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CheckEmailScreen()));
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
                  'Recover password',
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
