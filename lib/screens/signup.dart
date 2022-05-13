// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hngry/screens/confirm_screen.dart';
import 'package:hngry/widgets/appbar_signin.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


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
              'Let\'s create your foodly account',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF1A1824)),
            ),
            TextFormField(
              controller: email,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your email address',
              ),
            ),
            TextField(
              controller: password,
                cursorColor: Color(0xFF32C47C),
                obscureText: _isObscure,
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ?Icons.visibility_off:Icons.visibility ,
                        color:_isObscure ? Colors.black:Color(0xFF32C47C),
                      ),
                  
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                )),
                Text(email.text.toString()),

               ( email.text!='test@gmail.com'||password.text !='1234')?
            
             Text(''): Text('Invalid credentials. Please try again.', style: TextStyle(fontSize: 12, color: Colors.red),
        ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'By signing up you accept the Terms of Service and Privacy Policy.',
                style: TextStyle(fontSize: 12, color: Color(0xFF1A1824)),
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
                  'Sign up',
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
