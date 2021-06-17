import 'package:flutter/material.dart';
import 'package:flutter_auth_new/constants.dart';
import 'package:flutter_auth_new/screens/components/primary_button.dart';
import 'package:flutter_auth_new/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignForm extends StatelessWidget {
  const SignForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getPropertionateScreenHeight(20),
      ),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: "Email",
              hintText: "Masukkan Email Anda Disini",
            ),
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: "Password",
              hintText: "Masukkan Password Anda Disini",
            ),
          ),
          SizedBox(
            height: getPropertionateScreenHeight(10),
          ),
          Row(
            children: [
              Checkbox(
                activeColor: kPrimaryColor,
                value: true,
                onChanged: (value) {},
              ),
              Text("Tetap Login"),
              Spacer(
                flex: 2,
              ),
              Text("Lupa Password?"),
            ],
          ),
          PrimaryButton(),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
                  'assets/icons/facebook-2.svg',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
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
                  'assets/icons/google-icon.svg',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Tidak Punya Akun? "),
              Text("Daftar"),
            ],
          ),
        ],
      ),
    );
  }
}
