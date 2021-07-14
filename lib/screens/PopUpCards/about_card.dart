import 'package:flutter/material.dart';
import 'package:resume/components/constants.dart';
import 'package:resume/widgets/My_button.dart';

class AboutCard extends StatelessWidget {
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
                kSpaceTenPixel,
                Text(
                  'Hello I am Ajith Victor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kSpaceTenPixel,
                Text(
                    'I am from kollam. Now I work at Peniloop pvt. Ltd. at Software EngineerI am Computer Science post graduate. I have 3 year experience in Android Developing . I really enjoyingmusic and reading books.'),
                MyButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
