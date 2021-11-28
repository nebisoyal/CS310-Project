import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/utils/styles.dart';

void main() {
  runApp(SignUpPage());
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _signUpKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PageColors.pageBackgroundColor,
        appBar: AppBar(
            backgroundColor: PageColors.appBarColor,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.keyboard_return),
              color: PageColors.appBarButtonColor,
              iconSize: 30,
            ),
            title: Text("Sign Up",
                style: TextStyle(
                  color: PageColors.appBarTextColor,
                  fontSize: 20,
                ))),
        body: Column(
          children: [
            Form(
                key: _signUpKey,
                child: Expanded(
                    child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Please enter your username:",
                            style: TextStyle(
                              color: PageColors.pageTextColor,
                              fontSize: 20,
                            )),
                      ],
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(color: PageColors.textFormFieldHintColor),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: PageColors.textFormFieldBorderColor)))),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Please enter your email address:",
                            style: TextStyle(
                              color: PageColors.pageTextColor,
                              fontSize: 20,
                            )),
                      ],
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Email Address:",
                            hintStyle: TextStyle(color: PageColors.textFormFieldHintColor),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: PageColors.textFormFieldBorderColor)))),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Please enter your password:",
                            style: TextStyle(
                              color: PageColors.pageTextColor,
                              fontSize: 20,
                            )),
                      ],
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "********",
                          hintStyle: TextStyle(color: PageColors.textFormFieldHintColor),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: PageColors.textFormFieldBorderColor))),
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                      onPressed: () {},
                      child: Text("Sign Up",
                          style: TextStyle(fontSize: 20, color: PageColors.buttonTextColor)),

                      style: ElevatedButton.styleFrom(
                          primary: PageColors.buttonColor, elevation: 10)),
                      ],)
                  ],
                )))
          ],
        ));
  }
}
