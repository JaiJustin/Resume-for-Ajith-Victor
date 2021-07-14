import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  final OutlinedBorder shape;
  MyButton({this.color, this.buttonText, this.shape});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
          primary: color ?? Color(0xffbd004c),
          shape: shape ??
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Text(buttonText ?? 'close'),
    );
  }
}
