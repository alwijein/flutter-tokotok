import 'package:flutter/material.dart';
import 'package:flutter_auth_new/constants.dart';
import 'package:flutter_auth_new/services/services.dart';
import 'package:flutter_auth_new/size_config.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.email,
    required this.password,
  }) : super(key: key);
  final String email, password;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle primaryButton = ElevatedButton.styleFrom(
        primary: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ));

    return SizedBox(
      width: double.infinity,
      height: getPropertionateScreenHeight(50),
      child: ElevatedButton(
        style: primaryButton,
        onPressed: () {
          AuthServices.signIn(email, password);
        },
        child: Text(
          "SignIn",
          style: TextStyle(fontSize: getPropertionateScreenWidht(15)),
        ),
      ),
    );
  }
}
