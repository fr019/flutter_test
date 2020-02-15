import 'package:flutter/material.dart';
import 'package:test_app/routes.dart';
import 'package:test_app/ui/login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
        },
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Color(0xffc76b9c)
          ),
          routes: Routes.routes,
          home: LoginPage(),
        ));
  }
}
