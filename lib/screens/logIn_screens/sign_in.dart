import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:digital_stores/screens/MainPage.dart';
import 'package:digital_stores/screens/logIn_screens/model/logInBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static const String signIn = 'Sign_In';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 190.0,
                padding: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Center(
                  child: Image.network('https://picsum.photos/250?image=9'),
                ),
              ),
              LogInBox(
                hintText: 'Enter your email',
                labelText: 'Email',
                controller: _emailController,
                isObscure: false,
              ),
              LogInBox(
                hintText: 'Enter your password',
                labelText: 'Password',
                controller: _passwordController,
                isObscure: true,
              ),
              Padding(
                padding: EdgeInsets.all(3),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    child: Text(
                      'Forget Password ?',
                      style: GoogleFonts.lato(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  //TODO: this line is written just to check, must implement authentication
                  Navigator.pushNamed(context, MainPage.mainPage);
                },
                child: ClayContainer(
                  color: Color(0xFFF2F2F2),
                  borderRadius: 30,
                  depth: 30,
                  spread: 20,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: ClayText(
                        "Log In",
                        size: 30,
                        style: GoogleFonts.aladin(
                          color: Colors.red,

                        )
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
