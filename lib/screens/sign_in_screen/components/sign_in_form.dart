import 'package:flutter/material.dart';
import 'package:flutter_auth_new/screens/components/primary_button.dart';
import 'package:flutter_auth_new/services/services.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController email = new TextEditingController();

  final TextEditingController password = new TextEditingController();

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
              height: getPropertionateScreenHeight(10),
            ),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = !remember;
                    });
                  },
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        remember = !remember;
                      });
                    },
                    child: Text("Tetap Login")),
                Spacer(
                  flex: 2,
                ),
                Text("Lupa Password?", style: greyTextFont),
              ],
            ),
            PrimaryButton(
              text: "SignIn",
              press: () {
                AuthServices.signIn(email.text, password.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
