import 'package:flutter/material.dart';

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
          Card(
            child: ListTile(
              leading: Icon(Icons.laptop_mac_rounded),
              title: Text("Account 1"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.mail_outline_outlined),
              title: Text("Email"),
              subtitle: Text("beingaravian@gmail.com"),
              trailing: Icon(Icons.edit),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text("Contact"),
              subtitle: Text("+923234879062"),
              trailing: Icon(Icons.edit),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.message_outlined),
              title: Text("Message"),
              subtitle: Text("General"),
              trailing: Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }
}
