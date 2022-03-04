import 'package:flutter/material.dart';
import 'package:http_app/homecontent.dart';

import 'drawer/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Shopping App",
          style: TextStyle(
            color: Colors.lightGreen,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.lightGreen),
      ),
      drawer: MyDrawer(),
      body: HomeContent(),
    );
  }
}
