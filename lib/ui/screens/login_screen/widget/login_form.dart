import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/ui/commans/buttons/primary_button.dart';
import 'package:growmore/ui/commans/text/headline_text.dart';
import 'package:growmore/ui/commans/textfields/rounded_text_field.dart';
import 'package:growmore/ui/screens/home_screen/home_screen.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          RoundedTextField(
            hintText: "Email",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "Password",
            isObsecure: true,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 45,
            child: PrimaryButton(
              text: "LOGIN",
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 35,
          ),
          HeadlineText(
            text: "Forgot Password?",
            color: ColorConstants.accentColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
