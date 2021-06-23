import 'package:flutter/material.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';

class SplashContent extends StatelessWidget {
  SplashContent({
    required this.text,
    required this.img,
  });
  final String text, img;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TokoTok",
          style: TextStyle(
            fontSize: getPropertionateScreenWidht(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          img,
          height: getPropertionateScreenHeight(265),
          width: getPropertionateScreenWidht(235),
        )
      ],
    );
  }
}
