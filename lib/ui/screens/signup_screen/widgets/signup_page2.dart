import 'package:flutter/material.dart';
import 'package:growmore/ui/commans/textfields/rounded_text_field.dart';

class SignUpPage2 extends StatelessWidget {
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
            hintText: "Last degree name",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "University name",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "Passing year",
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
            hintText: "Per %",
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
