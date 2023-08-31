import 'package:eatsy/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:eatsy/utils/app_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Styles.bgColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
            children: [
              Text(
                'Login',
                style: Styles.headLineStyle1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                'Enter your details to continue',
                textAlign: TextAlign.center,
                style: Styles.headLineStyle3.copyWith(color: Colors.grey),
              )
            ]),
      ),
    );
  }
}
