import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_new/screens/sign_in_screen/sign_in_screen.dart';
import 'package:flutter_auth_new/screens/sign_out_screen/sign_out_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<User?>(context);
    if (user != null) {
      return SignOutScreen();
    } else {
      return SignInScreen();
    }

    // return Scaffold();
  }
}
