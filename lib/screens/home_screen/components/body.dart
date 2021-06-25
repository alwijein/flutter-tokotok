import 'package:flutter/material.dart';
import 'package:flutter_auth_new/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                        width: getPropertionateScreenWidht(70),
                        height: getPropertionateScreenWidht(70),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(userState is UserLoaded
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
                                ? userState.users.name.toUpperCase()
                                : "",
                            style: titleBlackFont,
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      Icon(Icons.filter_alt_outlined),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
