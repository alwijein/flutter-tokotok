import 'package:flutter/material.dart';
import 'package:flutter_auth_new/size_config.dart';
import 'package:flutter_svg/svg.dart';

class SocialLiteCard extends StatelessWidget {
  const SocialLiteCard({
    Key? key,
    this.press,
    required this.socialIcon,
  }) : super(key: key);
  final Function()? press;
  final String socialIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenHeight(10),
        ),
        padding: EdgeInsets.all(8),
        height: getPropertionateScreenHeight(50),
        width: getPropertionateScreenWidht(50),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF5F6F9),
        ),
        child: SvgPicture.asset(
          socialIcon,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
