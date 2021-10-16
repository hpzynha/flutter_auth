// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/provider/google_sign_in.dart';
import 'package:flutter_auth/Screens/welcome/components/social_login_button.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_auth/Screens/welcome/components/background.dart';
import 'package:flutter_auth/constants.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
              text: "Entrar",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
                text: "Cadastre-se",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                }),
            SocialLoginButton(text: "Entrar com o google", press: () {})
          ],
        ),
      ),
    );
  }
}
