import 'package:flutter/material.dart';
import 'package:project_app/routes/signup.dart';
import 'package:project_app/walktrough.dart';
import 'package:project_app/routes/login.dart';
import 'package:project_app/routes/welcome.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/walktroughPage',
    routes: {
      '/loginPage': (context)=> LoginPage(),
      '/walktroughPage': (context)=> Walktrough(),
      '/signUpPage': (context)=> SignUpPage(),
      '/welcomePage': (context)=> WelcomePage(),
    }
    ));
}