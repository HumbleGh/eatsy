import 'package:eatsy/utils/app_layout.dart';
import 'package:eatsy/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  const CustomTextField({super.key, required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 18),
          ),
          Gap(AppLayout.getHeight(8)),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(AppLayout.getHeight(18)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(8)),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                )),
            child: Text(
              hint,
              style: Styles.headLineStyle4,
            ),
          )
        ],
      ),
    );
  }
}
