import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String _title;
  final String _subtitle;
  final Icon _icon;

  DrawerTile(this._icon, this._title, this._subtitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: _icon,
        title: Text(_title),
        subtitle: Text(_subtitle),
        trailing: Icon(Icons.edit),
      ),
    );
  }
}
