import 'package:flutter/material.dart';
import 'package:http_app/dashboard.dart';
import 'package:http_app/error.dart';
import 'package:http_app/login.dart';
import 'package:http_app/routes.dart';
import 'package:http_app/signup.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      routes: {
        routes.home: (context) => HomePage(),
        routes.login: (context) => LoginPage(),
        routes.signup: (context) => SignupPage(),
        routes.error: (context) => ErrorPage(),
        routes.dashboard: (context) => Dashboard(),
      },
      home: HomePage(),
    );
  }
}
