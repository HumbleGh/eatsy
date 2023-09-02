import 'package:eatsy/pages/sign_up_screen.dart';
import 'package:eatsy/utils/app_style.dart';
import 'package:eatsy/widgets/button_text.dart';
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Login', style: Styles.headLineStyle1),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(0),
                horizontal: AppLayout.getHeight(20)),
            children: [
              Text(
                'Enter your details to continue',
                textAlign: TextAlign.center,
                style: Styles.headLineStyle4.copyWith(color: Colors.grey),
              ),
              Gap(AppLayout.getHeight(40)),
              const CustomTextField(
                label: 'Email',
                hint: 'Enter your email',
              ),
              Gap(AppLayout.getHeight(20)),
              const CustomTextField(
                  label: 'Password', hint: 'Enter your password'),
              Gap(AppLayout.getHeight(40)),
              //Log in button
              const ButtonText(text: 'Log in'),
              // Container(
              //   padding: EdgeInsets.all(AppLayout.getHeight(20)),
              //   decoration: BoxDecoration(
              //       color: Colors.blue,
              //       borderRadius: BorderRadius.circular(12)),
              //   child: Text('Log in',
              //       textAlign: TextAlign.center,
              //       style: Styles.headLineStyle2.copyWith(color: Colors.white)),
              // ),

              Gap(AppLayout.getHeight(16)),
              Text(
                'Don\'t have an account?',
                style: Styles.headLineStyle3,
                textAlign: TextAlign.center,
              ),
              Gap(AppLayout.getHeight(8)),

              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.blue[500], fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
      ),
    );
  }
}
