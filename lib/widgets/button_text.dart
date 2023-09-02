import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class ButtonText extends StatelessWidget {
  final String text;
  const ButtonText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(20)),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(12)),
      child: Text(text,
          textAlign: TextAlign.center,
          style: Styles.headLineStyle2.copyWith(color: Colors.white)),
    );
  }
}
