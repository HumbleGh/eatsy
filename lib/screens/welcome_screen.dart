import 'package:eatsy/utils/app_layout.dart';
import 'package:eatsy/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/text_more.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[700],
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(60)),
          children: [
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Humble!',
                        style:
                            Styles.headLineStyle1.copyWith(color: Colors.white),
                      ),
                      Gap(AppLayout.getHeight(4)),
                      Text(
                        '23 Jan, 2021',
                        style: TextStyle(
                            color: Colors.blue[300],
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(12)),
                      decoration: BoxDecoration(
                          color: Colors.blue[500],
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(8))),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Gap(AppLayout.getHeight(30)),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[500],
                  borderRadius: BorderRadius.circular(12)),
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(12)),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.white70,
                  ),
                  Gap(AppLayout.getHeight(6)),
                  Text(
                    'Search',
                    style:
                        Styles.headLineStyle3.copyWith(color: Colors.white70),
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(30)),
            const TextMore(
              text: 'How do you feel?',
            ),
            Gap(AppLayout.getHeight(30)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue[500],
                        ),
                        child: Text(
                          '😔',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                      Gap(AppLayout.getHeight(10)),
                      Text(
                        'Bad',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
