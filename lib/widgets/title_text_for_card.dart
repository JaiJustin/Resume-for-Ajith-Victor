import 'package:flutter/material.dart';

class TitleTextForCard extends StatelessWidget {
  final String text;
  TitleTextForCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}
