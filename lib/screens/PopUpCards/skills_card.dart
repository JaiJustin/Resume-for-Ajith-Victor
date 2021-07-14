import 'package:flutter/material.dart';
import 'package:resume/components/constants.dart';
import 'package:resume/widgets/My_button.dart';
import 'package:resume/widgets/SkillsCard.dart';
import 'package:resume/widgets/center_text.dart';

class SkillsCard extends StatelessWidget {
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
                CenterText('Skills'),
                kSpaceTenPixel,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySkillsCard(
                      text: 'ANDROID',
                      flex: 3,
                    ),
                    MySkillsCard(
                      text: 'Java',
                      flex: 2,
                    ),
                    MySkillsCard(
                      text: 'C++',
                      flex: 2,
                    ),
                    MySkillsCard(
                      text: 'CSS',
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySkillsCard(
                      text: 'HTML',
                      flex: 2,
                    ),
                    MySkillsCard(
                      text: 'MySQL',
                      flex: 3,
                    ),
                    MySkillsCard(
                      text: 'JavaScript',
                      flex: 3,
                    ),
                  ],
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
