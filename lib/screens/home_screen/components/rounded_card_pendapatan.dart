import 'package:flutter/material.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedCardPendapatan extends StatelessWidget {
  const RoundedCardPendapatan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getPropertionateScreenHeight(20),
      ),
      child: Container(
        height: getPropertionateScreenHeight(150),
        width: getPropertionateScreenWidht(350),
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset('assets/icons/money-wallet.svg'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Pendapatan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getPropertionateScreenWidht(25),
                  ),
                ),
                Text(
                  "34.800 Rp",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getPropertionateScreenWidht(22),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
