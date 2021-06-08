import 'package:flutter/material.dart';
import 'package:flutter_auth_new/screens/wrapper/wrapper.dart';
import 'package:flutter_auth_new/services/services.dart';
import 'package:provider/provider.dart';

class StreamProviderValue extends StatelessWidget {
  const StreamProviderValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      initialData: context,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Wrapper(),
      ),
    );
  }
}
