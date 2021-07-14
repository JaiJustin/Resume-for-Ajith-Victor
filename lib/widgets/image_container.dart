import 'package:flutter/material.dart';

import '../components/constants.dart';

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage('images/ajith4.jpg'), fit: BoxFit.fitWidth),
        ),
      ),
    );
  }
}
