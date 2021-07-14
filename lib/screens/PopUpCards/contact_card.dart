import 'package:flutter/material.dart';
import 'package:resume/components/constants.dart';
import 'package:resume/widgets/center_text.dart';
import 'package:resume/widgets/contact_list_tile.dart';

class ContactCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Material(
          color: kDefaultItemColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CenterText('Contact'),
                kSpaceTenPixel,
                ContactListTile(
                  icon: Icons.location_on,
                  title: 'Location',
                  subtitle: 'Kollam,Kerala',
                ),
                ContactListTile(
                  icon: Icons.email_outlined,
                  subtitle: 'ajithvictor13@gmail.com',
                  title: 'Email',
                ),
                ContactListTile(
                  icon: Icons.call,
                  title: 'Call',
                  subtitle: '+91 8086597008',
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffbd004c),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text('close'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
