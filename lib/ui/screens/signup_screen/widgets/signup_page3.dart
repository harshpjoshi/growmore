import 'package:flutter/material.dart';
import 'package:growmore/ui/commans/textfields/rounded_text_field.dart';

class SignUpPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        padding: EdgeInsets.only(bottom: 80),
        children: [
          SizedBox(
            height: 25,
          ),
          RoundedTextField(
            hintText: "Gender",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "Category",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "Mobile",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "Email",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "Username",
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
        ],
      ),
    );
  }
}
