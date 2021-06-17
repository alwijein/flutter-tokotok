import 'package:flutter/material.dart';
import 'package:flutter_auth_new/screens/sign_in_screen/components/body.dart';
import 'package:flutter_auth_new/size_config.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Screen'),
      ),
      body: Body(),
    );
  }
}
