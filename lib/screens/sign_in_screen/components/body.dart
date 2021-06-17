import 'package:flutter/material.dart';
import 'package:flutter_auth_new/constants.dart';
import 'package:flutter_auth_new/screens/sign_in_screen/components/sign_form.dart';
import 'package:flutter_auth_new/screens/sign_in_screen/components/social_lite_card.dart';
import 'package:flutter_auth_new/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getPropertionateScreenWidht(20),
              vertical: getPropertionateScreenHeight(20),
            ),
            child: Column(
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
                  'Sign To Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getPropertionateScreenWidht(20),
                  ),
                ),
                SignForm(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: getPropertionateScreenHeight(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialLiteCard(
                        socialIcon: 'assets/icons/facebook-2.svg',
                        press: () {},
                      ),
                      SocialLiteCard(
                        socialIcon: 'assets/icons/google-icon.svg',
                        press: () {},
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tidak Punya Akun? ",
                      style: TextStyle(
                        color: kSecondaryColor,
                      ),
                    ),
                    Text(
                      "Daftar",
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
