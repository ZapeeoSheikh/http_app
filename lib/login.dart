import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http_app/dashboard.dart';
import 'package:http_app/home.dart';
import 'package:http_app/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => LoginPage(),
            ),
          );
          setState(() {});
        },
        child: Icon(
          Icons.refresh,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assest/login.png"),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Welcome to Login Page",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    TextField(
                      cursorColor: Colors.lightGreen,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Username",
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.lightGreen),
                        icon: Icon(
                          CupertinoIcons.profile_circled,
                          color: Colors.lightGreen,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      cursorColor: Colors.pink,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password",
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.lightGreen),
                        icon: Icon(
                          CupertinoIcons.lock,
                          color: Colors.lightGreen,
                        ),
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    FlatButton(
                      color: Colors.lightGreen,
                      minWidth: 110,
                      height: 40,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Dashboard(),
                          ),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                      // color: Colors.lightGreen,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => HomePage(),
                                ),
                              );
                            },
                            child: Icon(
                              CupertinoIcons.home,
                              color: Colors.lightGreen,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => SignupPage(),
                                ),
                              );
                            },
                            child: Icon(
                              CupertinoIcons.right_chevron,
                              color: Colors.lightGreen,
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
