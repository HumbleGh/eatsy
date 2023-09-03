import 'package:eatsy/utils/app_layout.dart';
import 'package:eatsy/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue[600],
          body: ListView(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
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
                          style: Styles.headLineStyle1
                              .copyWith(color: Colors.white),
                        ),
                        Gap(AppLayout.getHeight(4)),
                        Text(
                          '23 Jan, 2021',
                          style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(12)),
                        decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(8))),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
