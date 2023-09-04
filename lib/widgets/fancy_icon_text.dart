import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class FancyIconText extends StatelessWidget {
  const FancyIconText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(1)),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 80,
                width: 80,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(20),
                    vertical: AppLayout.getHeight(20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue[500],
                ),
                child: const Text(
                  '😔',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Text(
                'Bad',
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
