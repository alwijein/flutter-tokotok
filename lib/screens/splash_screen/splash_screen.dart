import 'package:flutter/material.dart';
import 'package:flutter_auth_new/screens/splash_screen/components/body.dart';
import 'package:flutter_auth_new/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      body: Body(),
    );
  }
}
