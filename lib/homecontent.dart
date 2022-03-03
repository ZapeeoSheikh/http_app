import 'package:flutter/material.dart';
import 'package:http_app/login.dart';
import 'package:http_app/signup.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assest/home.png"),
            FlatButton(
              color: Colors.lightGreen,
              minWidth: 200,
              height: 40,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ),
                );
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              // color: Colors.lightGreen,
            ),
            FlatButton(
              color: Colors.lightGreen,
              minWidth: 150,
              height: 40,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SignupPage(),
                  ),
                );
              },
              child: Text(
                "Sign up",
                style: TextStyle(color: Colors.white),
              ),
              // color: Colors.lightGreen,
            ),
          ],
        ),
      ),
    );
  }
}
