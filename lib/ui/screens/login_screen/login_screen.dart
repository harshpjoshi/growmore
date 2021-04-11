import 'package:flutter/material.dart';
import 'package:growmore/ui/screens/login_screen/widget/login_form.dart';
import 'package:growmore/ui/screens/login_screen/widget/logo_widget.dart';
import 'package:growmore/ui/screens/login_screen/widget/signuptext.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoWidget(),
                LoginForm(),
              ],
            ),
          )
        ],
      ),
      bottomSheet: SignupText(),
    );
  }
}
