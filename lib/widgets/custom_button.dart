import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final double height;
  final VoidCallback onPressed;
  final double elevation = 15.0;
  const CustomButton(
      {Key? key,
      required this.height,
      required this.color,
      required this.onPressed,
      required this.text,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            elevation: elevation,
          ),
          onPressed: onPressed,
          child: const Text("Google")),
    );
  }
}
