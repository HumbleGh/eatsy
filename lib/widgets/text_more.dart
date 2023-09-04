import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class TextMore extends StatelessWidget {
  final String text;

  const TextMore({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.headLineStyle2.copyWith(color: Colors.white),
          ),
          const Icon(
            Icons.more_horiz_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
