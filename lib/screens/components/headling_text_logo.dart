import 'package:flutter/material.dart';
import 'package:flutter_auth_new/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeadlingTextLogo extends StatelessWidget {
  const HeadlingTextLogo({
    Key? key,
    required this.subTitle,
  }) : super(key: key);
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/icons/TokoTok-Logo-Circle.svg',
          width: getPropertionateScreenWidht(120),
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Text(
          'Welcome To TokoTok',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getPropertionateScreenWidht(20),
          ),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getPropertionateScreenWidht(18),
          ),
        ),
      ],
    );
  }
}
