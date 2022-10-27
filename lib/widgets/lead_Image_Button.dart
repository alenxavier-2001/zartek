import 'package:flutter/material.dart';

class LeadImageButton extends StatelessWidget {
  final String text;
  final String image;
  final Color color;
  final double width;
  final double height;
  final VoidCallback onPressed;
  final double elevation = 15.0;
  final Color fontColor = Colors.white;
  const LeadImageButton(
      {Key? key,
      required this.height,
      required this.color,
      required this.image,
      required this.onPressed,
      required this.text,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(30);
    // only(topRight: Radius.circular(32), bottomRight: Radius.circular(32));
    return SizedBox(
      width: width,
      height: height,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        onTap: onPressed,
        tileColor: color,
        leading: Image.asset(
          image,
          height: height / 1.7,
        ),
        title: Row(
          children: [
            SizedBox(
              width: width / 6,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: height / 3,
                  color: fontColor,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
