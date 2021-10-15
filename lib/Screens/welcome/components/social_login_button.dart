import 'package:flutter/material.dart';

import 'package:flutter_auth/constants.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback press;
  final String text;

  final Color color, textColor;
  const SocialLoginButton({
    Key? key,
    required this.press,
    required this.text,
    this.textColor = Colors.white,
    this.color = kPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: Container(
            color: color,
            child: Expanded(
              flex: 1,
              child: Row(
                children: [
                  TextButton(
                    onPressed: press,
                    child: Image.asset(
                      "assets/images/google.png",
                    ),

                    // child: Text(
                    //   text,
                    //   style: TextStyle(color: textColor),
                    // ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
