// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hngry/screens/confirm_screen.dart';
import 'package:hngry/widgets/appbar_signup.dart';

import 'forgot_password_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
        CustomAppBar()    ,
            const Text(
              'Welcome back! You\'ve been missed',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF1A1824)),
            ),
            TextFormField(
              cursorColor: Colors.black,
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
                  focusColor: Colors.black,
                  hoverColor: Colors.red,
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
                ( email.text!='test@gmail.com'||password.text !='1234')?
            
             Text(''): Text('Invalid credentials. Please try again.', style: TextStyle(fontSize: 12, color: Colors.red),
        ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: GestureDetector(
                 onTap: () {
                
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
                // Call your onPressed or onTap function here
              },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(fontSize: 14, color: Color(0xFF1A1824)),
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
                  'Sign in',
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
