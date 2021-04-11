import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/ui/commans/text/headline_text.dart';

class CreateAccountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: HeadlineText(
        text: "Create Account",
        color: ColorConstants.textColor,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        textAlign: TextAlign.center,
      ),
    );
  }
}
