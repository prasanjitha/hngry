// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:hngry/screens/confirm_screen.dart';
import 'package:hngry/widgets/appbar_skipfor_now.dart';

class ResendMessageScreen extends StatelessWidget {
  const ResendMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController firstDigit=TextEditingController();
    return Scaffold(
     resizeToAvoidBottomInset: false, 
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(
                height: 50,
              ),
              const Text(
                'Enter the 4-digit code sent to you at',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF1A1824)),
              ),
              const Text(
                '0767 217 315',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF32C47C)),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      controller: firstDigit,
                        decoration:
                            InputDecoration(contentPadding: EdgeInsets.all(5))),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    child: TextField(
                        decoration:
                            InputDecoration(contentPadding: EdgeInsets.all(5))),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    child: TextField(
                        decoration:
                            InputDecoration(contentPadding: EdgeInsets.all(5))),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    child: TextField(
                        decoration:
                            InputDecoration(contentPadding: EdgeInsets.all(5))),
                  ),
                ],
              ), SizedBox(
                height: 20,
              ),
              InkWell(
              onTap: () {
                
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ConfirmScreen()));
                // Call your onPressed or onTap function here
              },
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  color: Color(0xFF32C47C),
        
                  height: 30,
                  width: 142,
                  child: const Text(
                    'Test message resent',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(height: 20.0,),
              Center(
                child: const Text(
                  'Resend in 00:15',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
