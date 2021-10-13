// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_auth/Screens/welcome/Login/components/background.dart';
import 'package:flutter_auth/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Seu Email",
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
