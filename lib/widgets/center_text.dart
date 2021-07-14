import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  final String text;
  CenterText(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
    );
  }
}
