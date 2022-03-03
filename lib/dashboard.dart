import 'package:flutter/material.dart';
import 'package:http_app/drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "Welcome Rameez",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [],
      ),
    );
  }
}
