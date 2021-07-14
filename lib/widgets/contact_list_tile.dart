import 'package:flutter/material.dart';

class ContactListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  ContactListTile({this.icon, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(icon),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
