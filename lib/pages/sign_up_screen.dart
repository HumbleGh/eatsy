import 'package:eatsy/utils/app_layout.dart';
import 'package:eatsy/utils/app_style.dart';
import 'package:eatsy/widgets/button_text.dart';
import 'package:eatsy/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black),
        title: Text(
          'Create Acoount',
          style: Styles.headLineStyle2,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(0)),
        children: [
          Text(
            'Provide your details to complete \n creating account',
            textAlign: TextAlign.center,
            style: Styles.headLineStyle4,
          ),
          Gap(AppLayout.getHeight(40)),
          const CustomTextField(
            label: 'Full Name',
            hint: 'Enter your full name',
          ),
          Gap(AppLayout.getHeight(20)),
          const CustomTextField(label: 'Password', hint: 'Enter your email'),
          Gap(AppLayout.getHeight(20)),
          const CustomTextField(label: 'Password', hint: 'Enter your password'),
          Gap(AppLayout.getHeight(20)),
          const CustomTextField(
              label: 'Mobile Number', hint: 'Enter Mobile Number'),
          Gap(AppLayout.getHeight(40)),
          const ButtonText(text: 'Create account')
        ],
      ),
    );
  }
}
