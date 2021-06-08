import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_new/bloc/page_bloc.dart';
import 'package:flutter_auth_new/screens/home_screen/home_screen.dart';
import 'package:flutter_auth_new/screens/sign_in_screen/sign_in_screen.dart';
import 'package:flutter_auth_new/screens/splash_screen/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<User?>(context);

    if (user != null) {
      context.read<PageBloc>().add(GoToSplashPage());
    } else {
      context.read<PageBloc>().add(GoToHomePage());
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? SplashScreen()
            : (pageState is OnLoginPage)
                ? SignInScreen()
                : HomeScreen());
  }
}
