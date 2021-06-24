import 'package:flutter/material.dart';
import 'package:flutter_auth_new/screens/sign_up_screen/components/body.dart';
import 'package:flutter_auth_new/size_config.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: Body(),
    );
  }
}
