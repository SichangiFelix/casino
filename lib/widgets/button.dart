import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Color color;
  final Color textColor;
  final Function pressed;

  const Button({Key? key, required this.buttonText, required this.color, required this.textColor, required this.pressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> pressed,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(buttonText,style: TextStyle(color: textColor),),
        ),
      ),
    );
  }
}

