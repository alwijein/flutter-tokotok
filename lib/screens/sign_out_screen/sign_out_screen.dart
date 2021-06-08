import 'package:flutter/material.dart';
import 'package:flutter_auth_new/services/services.dart';

class SignOutScreen extends StatefulWidget {
  const SignOutScreen({Key? key}) : super(key: key);

  @override
  _SignOutScreenState createState() => _SignOutScreenState();
}

class _SignOutScreenState extends State<SignOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AuthServices.signOut();
          },
          child: Text('SignOut'),
        ),
      ),
    );
  }
}
