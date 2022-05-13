// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unrelated_type_equality_checks, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hngry/screens/confirm_screen.dart';
import 'package:hngry/widgets/appbar_skipfor_now.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController firstDigit = TextEditingController();
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
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  child: const Text('showModalBottomSheet'),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                             shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
          
            topLeft: Radius.circular(10.0),
        )
       ),
                      builder: (BuildContext context) {
                        return Container(
                          height: 358,
                          
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Is this your correct phone number?',
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
                                    height: 50,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ConfirmScreen()));
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
                                        'Yes, resend code by SMS',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ConfirmScreen()));
                                      // Call your onPressed or onTap function here
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(6),
                                        ),
                                      ),
                                      height: 46,
                                      width: 315,
                                      child: const Text(
                                        'No, I want to change it',
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
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
