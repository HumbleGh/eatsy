import 'package:eatsy/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Email',
            style: Styles.headLineStyle3,
          ),
          TextField()
        ],
      ),
    );
  }
}
