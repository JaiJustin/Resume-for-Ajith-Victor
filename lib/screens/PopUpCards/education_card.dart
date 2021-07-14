import 'package:flutter/material.dart';
import 'package:resume/components/constants.dart';
import 'package:resume/widgets/My_button.dart';
import 'package:resume/widgets/center_text.dart';
import 'package:resume/widgets/title_text_for_card.dart';
import 'package:resume/widgets/underline_for_text.dart';

class EducationCard extends StatelessWidget {
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
                CenterText('Education'),
                kSpaceTenPixel,
                TitleTextForCard('MASTER OF COMPUTER APPLICATION'),
                Container(
                  color: Colors.white,
                  height: 3,
                ),
                kSpaceTenPixel,
                CenterText(
                    'I completed my MCA (Master of Computer Application) from INDIRA GANDHI NATIONAL OPEN UNIVERSITY 2017-2019.'),
                kSpaceTenPixel,
                TitleTextForCard('BACHELOR OF COMPUTER APPLICATION'),
                UnderlineForText(),
                kSpaceTenPixel,
                CenterText(
                    'I completed my BCA (Bachelor of Computer Application) from INDIRA GANDHI NATIONAL OPEN UNIVERSITY 2014-2017.'),
                TitleTextForCard('Diploma in Computer Application'),
                UnderlineForText(),
                kSpaceTenPixel,
                CenterText(
                    'I completed my DCA (Diploma of Computer Application) from IHRD Kundara with 78% marks in 2013.'),
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
