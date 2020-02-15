import 'package:flutter/material.dart';
import 'package:test_app/ui/home/home.dart';
import 'package:test_app/ui/login/login.dart';

class Routes {
  Routes._();

  static const String home = '/home';
  static const String login = '/login';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomePage(),
    login: (BuildContext context) => LoginPage(),
  };
}
