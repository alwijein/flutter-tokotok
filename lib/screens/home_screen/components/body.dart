import 'package:flutter/material.dart';
import 'package:flutter_auth_new/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_auth_new/screens/components/card_barang.dart';
import 'package:flutter_auth_new/screens/home_screen/components/headling_selengkapnya.dart';
import 'package:flutter_auth_new/screens/home_screen/components/rounded_card.dart';
import 'package:flutter_auth_new/screens/home_screen/components/rounded_card_pendapatan.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, userState) {
              return Padding(
                padding: EdgeInsets.all(getPropertionateScreenWidht(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: getPropertionateScreenWidht(60),
                          height: getPropertionateScreenWidht(60),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset((userState is UserLoaded)
                              ? userState.users.profilePicture.toString()
                              : ""),
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: greyTextFont,
                            ),
                            Text(
                              userState is UserLoaded
                                  ? userState.users.name
                                  : "",
                              style: titleBlackFont,
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Icon(Icons.filter_alt_outlined, color: kSecondaryColor),
                      ],
                    ),
                    RoundedCardPendapatan(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RoundedCard(
                          title: "Laba Bersih",
                          count: "Rp 67000",
                          color: kBlueColor,
                        ),
                        RoundedCard(
                          title: "Total Pembeli",
                          count: "68 Orang",
                          color: kRedColor,
                        ),
                      ],
                    ),
                    HeadlingSelengkapnya(
                      title: "Barang",
                      press: () {},
                    ),
                    CardBarang(
                      kd: "KD1",
                      namaBarang: "Indomie Soto",
                      hargaBeli: "Rp3000",
                      hargaJual: "Rp5000",
                      stok: "100",
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
