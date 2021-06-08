import 'package:flutter/material.dart';
import 'package:flutter_auth_new/services/services.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AuthServices.signIn('admin@mail.io', 'adminadmin');
          },
          child: Text("SingIn"),
        ),
      ),
    );
  }
}
