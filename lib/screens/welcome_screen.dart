import 'package:flutter/material.dart';
import 'package:list_wisata/screens/main_screen.dart';
import 'package:list_wisata/screens/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  final _auth = FirebaseAuth.instance;
  String usernameInput;
  String passwordInput;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              new Image.asset('assets/images/logowisata.jpg', width: 100.0,),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value){
                  usernameInput = value;
                },
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                onChanged: (value){
                  passwordInput = value;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                    child: Text('Sign Up'),
                  ),
                  RaisedButton(
                    onPressed: () async {
                      try {
                        final newUser =
                        await _auth.signInWithEmailAndPassword(
                            email: usernameInput, password: passwordInput);
                        if (newUser != null) {
                          Navigator.popAndPushNamed(context, MainScreen.id);
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Text('Sign In'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}