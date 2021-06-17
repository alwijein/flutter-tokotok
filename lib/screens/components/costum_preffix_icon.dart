import 'package:flutter/material.dart';
import 'package:flutter_auth_new/size_config.dart';
import 'package:flutter_svg/svg.dart';

class CostumPreffixIcon extends StatelessWidget {
  const CostumPreffixIcon({
    Key? key,
    required this.svgImg,
  }) : super(key: key);

  final String svgImg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getPropertionateScreenWidht(20),
        getPropertionateScreenWidht(20),
        getPropertionateScreenWidht(20),
      ),
      child: SvgPicture.asset(
        svgImg,
        height: getPropertionateScreenWidht(18),
      ),
    );
  }
}
