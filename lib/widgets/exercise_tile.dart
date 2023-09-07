import 'package:eatsy/utils/app_layout.dart';
import 'package:eatsy/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExerciseTile extends StatelessWidget {
  final String title;
  final int exercise;
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final color;
  const ExerciseTile(
      {super.key,
      required this.title,
      required this.exercise,
      this.color,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(16),
          vertical: AppLayout.getHeight(16)),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(14)),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10))),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
                Gap(AppLayout.getHeight(12)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Styles.headLineStyle2,
                    ),
                    Gap(AppLayout.getHeight(5)),
                    Text(
                      '$exercise ' 'Exercises',
                      style: Styles.headLineStyle4,
                    ),
                  ],
                )
              ],
            ),
          ),
          const Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
