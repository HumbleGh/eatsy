import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class FancyIconText extends StatelessWidget {
  final String emoji;
  final String text;
  const FancyIconText({super.key, required this.emoji, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: AppLayout.getHeight(80),
                width: AppLayout.getHeight(80),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(20),
                    vertical: AppLayout.getHeight(20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue[500],
                ),
                child: Text(
                  emoji,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Text(
                text,
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
