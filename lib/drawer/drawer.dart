import 'package:flutter/material.dart';
import 'package:http_app/drawer/drawertiles.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Colors.lightGreen,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Muhammad Rameez",
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              "chat@muhammadrameez.me",
              style: TextStyle(color: Colors.white),
            ),
            arrowColor: Colors.black,
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://miro.medium.com/max/3150/1*IKWC2jXpjCEu-ysCn4dhgA.jpeg"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "MR",
                  style: TextStyle(color: Colors.lightGreen),
                ),
              ),
            ],
          ),
          DrawerTile(Icon(Icons.laptop_mac_rounded), "Account 1", "Personal"),
          DrawerTile(Icon(Icons.mail_outline_outlined), "Email",
              "beingaravian@gmail.com"),
          DrawerTile(Icon(Icons.phone), "Contact", "+923234879062"),
          DrawerTile(Icon(Icons.message_outlined), "Message", "General"),
          DrawerTile(Icon(Icons.group), "Groups", "Private"),
        ],
      ),
    );
  }
}
