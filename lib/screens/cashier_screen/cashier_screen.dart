import 'package:flutter/material.dart';
import 'package:flutter_auth_new/screens/cashier_screen/components/body.dart';
import 'package:flutter_auth_new/size_config.dart';

class CashierScreen extends StatelessWidget {
  const CashierScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
