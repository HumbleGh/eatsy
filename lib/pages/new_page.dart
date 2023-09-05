import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
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
                const Text('Hey')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
