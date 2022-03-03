import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => SignupPage(),
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
              Image.asset("assest/signup.png"),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Welcome to Sign Up Page",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    TextField(
                      cursorColor: Colors.lightGreen,
                      decoration: InputDecoration(
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
                    TextFormField(
                      cursorColor: Colors.lightGreen,
                      decoration: InputDecoration(
                        hintText: "Enter Phone",
                        labelText: "Phone number",
                        labelStyle: TextStyle(color: Colors.lightGreen),
                        icon: Icon(
                          CupertinoIcons.phone,
                          color: Colors.lightGreen,
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    TextFormField(
                      cursorColor: Colors.lightGreen,
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.lightGreen),
                        icon: Icon(
                          CupertinoIcons.mail,
                          color: Colors.lightGreen,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFormField(
                      cursorColor: Colors.pink,
                      decoration: InputDecoration(
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
                            builder: (_) => HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        "Signup",
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
                                  builder: (_) => LoginPage(),
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
