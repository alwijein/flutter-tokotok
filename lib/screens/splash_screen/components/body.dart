import 'package:flutter/material.dart';
import 'package:flutter_auth_new/bloc/page_bloc/page_bloc.dart';
import 'package:flutter_auth_new/models/splash_model.dart';
import 'package:flutter_auth_new/screens/splash_screen/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
