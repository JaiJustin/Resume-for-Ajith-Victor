import 'package:flutter/material.dart';

class MySkillsCard extends StatelessWidget {
  final String text;
  final int flex;
  MySkillsCard({this.text, this.flex});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
