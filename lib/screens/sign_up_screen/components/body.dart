import 'package:flutter/material.dart';
import 'package:flutter_auth_new/bloc/page_bloc/page_bloc.dart';
import 'package:flutter_auth_new/screens/components/headling_text_logo.dart';
import 'package:flutter_auth_new/screens/sign_up_screen/components/sign_up_form.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadlingTextLogo(
                  subTitle: "Sign Up To Continue",
                ),
                SignUpForm(),
                Padding(
                  padding: EdgeInsets.only(
                    top: getPropertionateScreenHeight(55),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah Punya Akun? ",
                        style: greyTextFont,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<PageBloc>().add(GoToSignInPage());
                        },
                        child: Text(
                          "Login",
                          style: orangeTextFont,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
