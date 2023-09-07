import 'package:eatsy/utils/app_layout.dart';
import 'package:eatsy/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExerciseTile extends StatelessWidget {
  final String title;
  final int exercise;
  const ExerciseTile({super.key, required this.title, required this.exercise});

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
                  child: const Icon(
                    Icons.man,
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
