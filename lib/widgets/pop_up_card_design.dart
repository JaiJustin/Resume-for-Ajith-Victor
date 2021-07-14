import 'package:flutter/material.dart';
import 'package:resume/components/constants.dart';

class PopUpCardDesign extends StatelessWidget {
  PopUpCardDesign({this.children, this.padding});
  final List<Widget> children;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
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
                children: [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
