import 'package:flutter/material.dart';
import 'package:flutter_auth_new/bloc/page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Text("TokoTOk"),
            ElevatedButton(
              onPressed: () {
                context.read<PageBloc>().add(GoToLoginPage());
              },
              child: Text("SignIn"),
            ),
          ],
        ),
      ),
    );
  }
}
