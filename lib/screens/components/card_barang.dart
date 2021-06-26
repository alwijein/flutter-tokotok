import 'package:flutter/material.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';

class CardBarang extends StatelessWidget {
  const CardBarang({
    Key? key,
    required this.kd,
    required this.namaBarang,
    required this.hargaJual,
    required this.hargaBeli,
    required this.stok,
  }) : super(key: key);
  final String kd, namaBarang, hargaJual, hargaBeli, stok;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: getPropertionateScreenHeight(110),
          width: getPropertionateScreenWidht(350),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 7,
                spreadRadius: 2,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: getPropertionateScreenWidht(90),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    namaBarang,
                  ),
                  Text("Harga Jual: " + hargaJual),
                  Text("Harga Beli: " + hargaBeli),
                  Text("Stok: " + stok),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: getPropertionateScreenHeight(110),
          width: getPropertionateScreenWidht(80),
          decoration: BoxDecoration(
            color: kRedColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              kd,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: getPropertionateScreenWidht(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
