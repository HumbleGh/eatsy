import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class TextMore extends StatelessWidget {
  final String text;
  final bool? isColorWhite;

  const TextMore({super.key, required this.text, this.isColorWhite});

  @override
  Widget build(BuildContext context) {
    // Define the default text and icon colors
    Color textColor = Colors.black;
    Color iconColor = Colors.black;

    // Check if isColorWhite is provided and set colors accordingly
    if (isColorWhite != null && isColorWhite!) {
      textColor = Colors.white;
      iconColor = Colors.white;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.headLineStyle2.copyWith(color: textColor),
          ),
          Icon(
            Icons.more_horiz_rounded,
            color: iconColor,
          )
        ],
      ),
    );
  }
}
