import 'package:flutter/material.dart';
import 'package:flutter_auth_new/services/services.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          AuthServices.signOut();
        },
        child: Text('SignOut'),
      ),
    );
  }
}
