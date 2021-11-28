import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/main.dart';
import 'package:project_app/utils/styles.dart';

void main(){
  runApp(WelcomePage());
}

class WelcomePage extends StatefulWidget {
  
  @override
  _WelcomePageState createState() => _WelcomePageState();
}


class _WelcomePageState extends State<WelcomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PageColors.pageBackgroundColor,
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("Welcome to Fresh News!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: PageColors.pageTextColor)),
            SizedBox(height: 50),
            Text("Thank you for joining us",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: PageColors.pageTextColor)),
            SizedBox(height: 50),
            Text("Please login or sign up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: PageColors.pageTextColor)),
            SizedBox(height: 250),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 130,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                       Navigator.pushNamed(context, '/loginPage');
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: PageColors.buttonTextColor)),
                      
                      style: ElevatedButton.styleFrom(
                          primary: PageColors.buttonColor, elevation: 10)),
                ),
                SizedBox(
                  width: 130,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signUpPage');
                      },
                      child: Text("Sign Up",
                          style: TextStyle(fontSize: 20, color: PageColors.buttonTextColor)),

                      style: ElevatedButton.styleFrom(
                          primary: PageColors.buttonColor, elevation: 10)),
                ),
              ],
            )
          ],
        ));
  }
}
