import 'package:flutter/material.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';

class HeadlingText extends StatelessWidget {
  const HeadlingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(30)),
      child: Column(
        children: [
          Text(
            "FORM",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: getPropertionateScreenWidht(36),
            ),
          ),
          Text(
            "Tambah Barang",
            style: TextStyle(
              color: Colors.black,
              fontSize: getPropertionateScreenWidht(21),
            ),
          ),
        ],
      ),
    );
  }
}
