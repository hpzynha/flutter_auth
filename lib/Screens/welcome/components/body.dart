// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/welcome/Login/login_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_auth/Screens/welcome/components/background.dart';
import 'package:flutter_auth/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }),
            RoundedButton(
              text: "LOGIN",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            ),
            RoundedButton(
              text: "LOGIN COM O GOOGLE",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
