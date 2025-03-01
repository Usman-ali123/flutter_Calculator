import 'package:flutter/material.dart';
import 'package:maheer_khan/constant.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;

  const MyButton({
    super.key,
    required this.title,
    required this.onpress,
    this.color = grayColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          width: 70,
          height: 70,
          child: Center(child: Text(title, style: headingTextStyle)),
        ),
      ),
    );
  }
}
