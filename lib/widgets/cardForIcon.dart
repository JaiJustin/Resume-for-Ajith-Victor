import 'package:flutter/material.dart';

class CardForIcon extends StatelessWidget {
  CardForIcon({
    this.icon,
    this.text,
    this.onTap,
  });
  final IconData icon;
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap ??
            () {
              print('It\'s pressed');
            },
        child: Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff1d1e33),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50,
              ),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
