import 'package:flutter/material.dart';
import 'package:flutter_auth_new/screens/components/primary_button.dart';
import 'package:flutter_auth_new/services/services.dart';
import 'package:flutter_auth_new/size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController email = new TextEditingController();

  final TextEditingController password = new TextEditingController();
  final TextEditingController confirmPass = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
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
              controller: email,
            ),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Password",
                hintText: "Masukkan Password Anda Disini",
              ),
              controller: password,
            ),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Confirm Password",
                hintText: "Masukkan Password Anda Disini",
              ),
              controller: confirmPass,
            ),
            SizedBox(
              height: getPropertionateScreenHeight(20),
            ),
            PrimaryButton(
              text: "SignIn",
              press: () {
                AuthServices.signUp(
                  email.text,
                  password.text,
                  email.text.split('@')[0],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
