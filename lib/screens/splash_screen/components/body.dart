import 'package:flutter/material.dart';
import 'package:flutter_auth_new/bloc/page_bloc/page_bloc.dart';
import 'package:flutter_auth_new/models/splash_model.dart';
import 'package:flutter_auth_new/screens/components/primary_button.dart';
import 'package:flutter_auth_new/screens/splash_screen/components/splash_content.dart';
import 'package:flutter_auth_new/shared/shared.dart';
import 'package:flutter_auth_new/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: PageView.builder(
                  itemCount: splashData.length,
                  itemBuilder: (_, index) {
                    return SplashContent(
                      text: splashData[index].text,
                      img: splashData[index].img,
                    );
                  },
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidht(20),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => dotBuilder(index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    PrimaryButton(
                      text: "Continue",
                      press: () {
                        return context.read<PageBloc>().add(GoToSignInPage());
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer dotBuilder(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
