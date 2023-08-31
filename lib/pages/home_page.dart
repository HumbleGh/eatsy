import 'package:eatsy/utils/app_style.dart';
import 'package:eatsy/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:eatsy/utils/app_layout.dart';
import 'package:gap/gap.dart';

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
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getHeight(20)),
            children: [
              Text(
                'Login',
                style: Styles.headLineStyle1,
                textAlign: TextAlign.center,
              ),
              Gap(AppLayout.getHeight(8)),
              Text(
                'Enter your details to continue',
                textAlign: TextAlign.center,
                style: Styles.headLineStyle4.copyWith(color: Colors.grey),
              ),
              Gap(AppLayout.getHeight(20)),
              CustomTextField(
                Label: 'Email',
                Hint: 'Enter your email',
              )
            ]),
      ),
    );
  }
}
