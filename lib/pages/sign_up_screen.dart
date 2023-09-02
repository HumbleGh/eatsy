import 'package:eatsy/utils/app_layout.dart';
import 'package:eatsy/utils/app_style.dart';
import 'package:eatsy/widgets/button_text.dart';
import 'package:eatsy/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatefulWidget {
  static bool? isColor;
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
          const ButtonText(text: 'Create account'),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: AppLayout.getHeight(16),
                  width: AppLayout.getHeight(16),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey)),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Text(
                'Send me travel tips and promotion via email',
                style: Styles.headLineStyle4,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(12)),
          Text(
            'By creating an account, you accept our',
            textAlign: TextAlign.center,
            style: Styles.headLineStyle4,
          ),
          Gap(AppLayout.getHeight(6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Terms ',
                style: TextStyle(color: Colors.blue),
              ),
              Gap(AppLayout.getHeight(4)),
              Text(
                'and ',
                style: Styles.headLineStyle4,
              ),
              Gap(AppLayout.getHeight(4)),
              const Text(
                'Privacy Policy',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }
}
