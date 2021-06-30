import 'package:flutter/material.dart';
import 'package:flutter_auth_new/bloc/page_bloc/page_bloc.dart';
import 'package:flutter_auth_new/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_auth_new/models/models.dart';
import 'package:flutter_auth_new/screens/components/headling_text_logo.dart';
import 'package:flutter_auth_new/screens/components/primary_button.dart';
import 'package:flutter_auth_new/screens/home_screen/home_screen.dart';
import 'package:flutter_auth_new/screens/navbar/navbar.dart';
import 'package:flutter_auth_new/screens/sign_in_screen/components/sign_in_form.dart';
import 'package:flutter_auth_new/screens/sign_in_screen/components/social_lite_card.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                HeadlingTextLogo(
                  subTitle: "Sign In To Continue",
                ),
                SignInForm(),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     vertical: getPropertionateScreenHeight(20),
                //   ),
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       SocialLiteCard(
                //         socialIcon: 'assets/icons/facebook-2.svg',
                //         press: () {},
                //       ),
                //       SocialLiteCard(
                //         socialIcon: 'assets/icons/google-icon.svg',
                //         press: () {},
                //       ),
                //     ],
                //   ),
                // ),
                PrimaryButton(
                    text: "Admin",
                    press: () {
                      context.read<UserBloc>().add(AdminUser());
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        return NavBar();
                      }));
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tidak Punya Akun? ",
                      style: greyTextFont,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<PageBloc>().add(GoToSignUpPage());
                      },
                      child: Text(
                        "Daftar",
                        style: orangeTextFont,
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
