import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:resume/components/constants.dart';
import 'package:resume/widgets/My_button.dart';
import 'package:resume/widgets/ProjectsList.dart';
import 'package:resume/widgets/center_text.dart';

class ProjectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
              CenterText('Projects'),
              kSpaceTenPixel,
              Container(
                height: MediaQuery.of(context).size.height * 0.60,
                width: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProjectsList(
                      projectTitle: 'Continuity Tester',
                      firstImagePath: 'images/ContinutyTester.png',
                      projectDescription:
                          '* Check continuity \n* Helps to know approximate resistance value \n* The device emits an audible response when it detects a complete path.',
                      secondImagePath: 'images/ContinutyTester2.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProjectsList(
                      projectTitle: 'BatteryAlarm',
                      firstImagePath: 'images/BatteryAlarm.png',
                      projectDescription:
                          'You just install one time automatically work the app.You don\'t forget to unplug your chargerNo settingsIf 100% battery level - (notify battery fully charged)',
                      secondImagePath: 'images/BatteryAlarm2.png',
                    ),
                  ],
                ),
              ),
              MyButton(),
            ],
          ),
        ),
      ),
    );
  }
}
