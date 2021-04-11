import 'package:flutter/material.dart';
import 'package:growmore/ui/commans/textfields/rounded_text_field.dart';

class SignupPage1 extends StatelessWidget {
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
            hintText: "Fullname",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "Address",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "City",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "Pin code",
          ),
          SizedBox(
            height: 15,
          ),
          RoundedTextField(
            hintText: "State",
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
