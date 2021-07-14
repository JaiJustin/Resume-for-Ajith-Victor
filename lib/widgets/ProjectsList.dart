import 'package:flutter/material.dart';
import 'package:resume/components/constants.dart';

class ProjectsList extends StatelessWidget {
  final String projectTitle;
  final String firstImagePath;
  final String secondImagePath;
  final String projectDescription;
  ProjectsList(
      {this.secondImagePath,
      this.firstImagePath,
      this.projectDescription,
      this.projectTitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width * 0.70,
      child: ListView(
        children: [
          Text(
            projectTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          kSpaceTenPixel,
          Image.asset(firstImagePath),
          kSpaceHeightTwentyPixel,
          Text(projectDescription),
          kSpaceHeightTwentyPixel,
          Image.asset(secondImagePath),
        ],
      ),
    );
  }
}
