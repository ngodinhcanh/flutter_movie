import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_movie/configs/themes/app_color.dart';
import 'package:flutter_movie/configs/themes/text_style.dart';
import 'package:flutter_movie/constants/assets_path.dart';
import 'package:flutter_movie/widgets/stl/button_sentence.dart';
import 'package:flutter_movie/widgets/stl/classic_button.dart';
import 'package:flutter_movie/widgets/stl/custom_textfield.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          SizedBox(height: 30),
          Container(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              AssetPath.iconLogo,
              scale: 1.3,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            alignment: Alignment.centerLeft,
            child:
                Text('Welcome Back,\nMovie Lover!', style: TxtStyle.heading1),
          ),
          SizedBox(height: 30),
          Container(
            child: Column(
              children: [
                CustomTextField(
                  height: MediaQuery.of(context).size.height / 14,
                  content: 'Email Address',
                ),
                SizedBox(height: 10),
                CustomTextField(
                  height: MediaQuery.of(context).size.height / 14,
                  content: 'Password',
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 10, right: 30),
            child: Text(
              'Forgot Password?',
              style: TxtStyle.heading4Light,
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ClassicButton(
              height: size.height / 14,
              color: DarkTheme.blueMain,
              child: Text(
                'Login',
                style: TxtStyle.heading3Medium,
              ),
              onTap: () {
                // Navigator.pushNamed(context, Routes.rootPage);
              },
            ),
          ),
          SizedBox(height: 20),
          BottomSentence(
            content1: 'Create new account? ',
            content2: 'Sign Up',
            fnc: () {
              // Navigator.pushNamed(context, Routes.signUpPage);
            },
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  AssetPath.btnGooglex2,
                  scale: 2,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                child: Image.asset(
                  AssetPath.btnFacebookx2,
                  scale: 2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
