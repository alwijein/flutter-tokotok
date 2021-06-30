import 'package:flutter/material.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';

class HeadlingSelengkapnya extends StatelessWidget {
  const HeadlingSelengkapnya({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getPropertionateScreenHeight(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kTextColor,
              fontSize: getPropertionateScreenWidht(18),
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              "Selengkapnya",
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: getPropertionateScreenWidht(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
