import 'package:eatsy/utils/app_layout.dart';
import 'package:eatsy/utils/app_style.dart';
import 'package:eatsy/widgets/exercise_tile.dart';
import 'package:eatsy/widgets/fancy_icon_text.dart';
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
        bottomSheet: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(20),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Humble!',
                          style: Styles.headLineStyle1
                              .copyWith(color: Colors.white),
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
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
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
                isColorWhite: true,
              ),
              Gap(AppLayout.getHeight(30)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FancyIconText(emoji: '😩', text: 'Sad'),
                  FancyIconText(emoji: '😒', text: 'Fine'),
                  FancyIconText(emoji: '😊', text: 'Well'),
                  FancyIconText(emoji: '😀', text: 'Excellent'),
                ],
              ),
              Gap(AppLayout.getHeight(30)),
              Expanded(
                  child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(30)),
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(24)),
                    color: Color.fromARGB(255, 238, 238, 238)),
                child: SingleChildScrollView(
                  // Wrap the entire content with a SingleChildScrollView
                  child: Column(children: [
                    const TextMore(
                      text: 'Exercises',
                      isColorWhite: false,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Scrollbar(
                      // Wrap the ListView with a Scrollbar
                      child: ListView(
                        shrinkWrap: true, // Add this line
                        children: [
                          const ExerciseTile(
                            title: 'Speaking Skillz',
                            exercise: 12,
                            color: Colors.blue,
                            icon: Icons.favorite,
                          ),
                          Gap(AppLayout.getHeight(12)),
                          const ExerciseTile(
                            title: 'Reading Skillz',
                            exercise: 16,
                            color: Colors.green,
                            icon: Icons.graphic_eq,
                          ),
                          Gap(AppLayout.getHeight(12)),
                          const ExerciseTile(
                            title: 'Writing Skillz',
                            exercise: 8,
                            color: Colors.orange,
                            icon: Icons.abc,
                          ),
                          Gap(AppLayout.getHeight(12)),
                        ],
                      ),
                    )
                  ]),
                ),
              )),
            ],
          ),
        ));
  }
}
