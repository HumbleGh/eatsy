import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class ButtonText extends StatelessWidget {
  final String text;
  const ButtonText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(8)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.blue),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          'Create account',
          style: Styles.headLineStyle2.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
