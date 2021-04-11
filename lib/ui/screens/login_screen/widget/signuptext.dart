import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/ui/commans/text/headline_text.dart';
import 'package:growmore/ui/screens/signup_screen/signup_screen.dart';

class SignupText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeadlineText(
            text: "Don\'t have an Account?",
            color: ColorConstants.textColor,
            fontSize: 14,
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () async{
              await Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return SignUpScreen();
                  },
                ),
              );
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: HeadlineText(
              text: "Sign Up",
              color: ColorConstants.accentColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
