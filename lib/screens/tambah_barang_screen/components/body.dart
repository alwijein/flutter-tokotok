import 'package:flutter/material.dart';
import 'package:flutter_auth_new/screens/components/primary_button.dart';
import 'package:flutter_auth_new/screens/tambah_barang_screen/components/add_item_form.dart';
import 'package:flutter_auth_new/screens/tambah_barang_screen/components/headling_text.dart';
import 'package:flutter_auth_new/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(getPropertionateScreenWidht(20)),
            child: Column(
              children: [
                HeadlingText(),
                AddItemForm(),
                PrimaryButton(text: "SIMPAN", press: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
