import 'package:flutter/material.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';

class RoundedCard extends StatelessWidget {
  const RoundedCard({
    Key? key,
    required this.title,
    required this.count,
    this.color = kBlueColor,
  }) : super(key: key);
  final String title, count;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getPropertionateScreenWidht(160),
      height: getPropertionateScreenHeight(150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color.withOpacity(0.8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 7,
            spreadRadius: 2,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: getPropertionateScreenWidht(20),
              color: Colors.white,
            ),
          ),
          Text(
            count,
            style: TextStyle(
              color: Colors.white,
              fontSize: getPropertionateScreenWidht(20),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
