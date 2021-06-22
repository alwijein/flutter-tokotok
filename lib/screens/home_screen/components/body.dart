import 'package:flutter/material.dart';
import 'package:flutter_auth_new/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_auth_new/services/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<UserBloc, UserState>(
            builder: (_, userState) => (userState is UserLoaded)
                ? Text(userState.users.name)
                : Text("Cannot Loaded"),
          ),
          ElevatedButton(
            onPressed: () {
              AuthServices.signOut();
            },
            child: Text("Sign Out"),
          ),
        ],
      ),
    );
  }
}
