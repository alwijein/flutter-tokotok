import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_new/bloc/page_bloc.dart';
import 'package:flutter_auth_new/screens/wrapper/wrapper.dart';
import 'package:flutter_auth_new/services/services.dart';
import 'package:flutter_auth_new/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      initialData: null,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PageBloc()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: theme(),
          home: Wrapper(),
        ),
      ),
    );
  }
}
