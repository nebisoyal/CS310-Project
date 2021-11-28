import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/utils/styles.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PageColors.pageBackgroundColor,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_return),
            color: PageColors.appBarButtonColor,
            iconSize: 30,
          ),
          title: Text("Login",
              style: TextStyle(
                color: PageColors.appBarTextColor,
                fontSize: 20,
              )),
          backgroundColor: PageColors.appBarColor,
        ),
        body: Column(
          children: [
            Form(
                key: _formKey,
                child: Expanded(
                    child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text("Please enter the username you want to choose:",
                        style: TextStyle(
                          color: PageColors.pageTextColor,
                          fontSize: 20,
                        )),
                    SizedBox(height: 10),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(
                                color: PageColors.textFormFieldHintColor),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        PageColors.textFormFieldBorderColor)))),
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
                            hintStyle: TextStyle(
                                color: PageColors.textFormFieldHintColor),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        PageColors.textFormFieldBorderColor)))),
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
                          hintStyle: TextStyle(
                              color: PageColors.textFormFieldHintColor),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: PageColors.textFormFieldBorderColor))),
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Please enter your password again:",
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
                          hintStyle: TextStyle(
                              color: PageColors.textFormFieldHintColor),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: PageColors.textFormFieldBorderColor))),
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
                      child: Text("Login",
                          style: TextStyle(fontSize: 20, color: PageColors.buttonTextColor)),

                      style: ElevatedButton.styleFrom(
                          primary: PageColors.buttonColor, elevation: 10)),
                      ],
                    ),
                  ],
                )))
          ],
        ));
  }
}
