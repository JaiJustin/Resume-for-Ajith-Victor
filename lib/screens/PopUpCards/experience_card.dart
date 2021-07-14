import 'package:flutter/material.dart';
import 'package:resume/components/constants.dart';
import 'package:resume/widgets/My_button.dart';
import 'package:resume/widgets/center_text.dart';

class ExperienceCard extends StatelessWidget {
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
                CenterText('Experience'),
                kSpaceTenPixel,
                Text(
                  'Three Year experience in ANDROID and making applications and publish to play store. Two year experience in Web Development',
                  textAlign: TextAlign.start,
                ),
                kSpaceTenPixel,
                MyButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
