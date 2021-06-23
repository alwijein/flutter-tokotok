import 'package:flutter/material.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle primaryButton = ElevatedButton.styleFrom(
      primary: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );

    return SizedBox(
      width: double.infinity,
      height: getPropertionateScreenHeight(50),
      child: ElevatedButton(
        style: primaryButton,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(fontSize: getPropertionateScreenWidht(15)),
        ),
      ),
    );
  }
}
