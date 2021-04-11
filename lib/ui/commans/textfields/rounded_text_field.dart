import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';

class RoundedTextField extends StatelessWidget {

  final String hintText;
  final bool isObsecure;

  const RoundedTextField({Key key, this.hintText, this.isObsecure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorConstants.accentColor,
      obscureText: isObsecure ?? false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: ColorConstants.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: ColorConstants.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: ColorConstants.borderColor),
        ),
        hintText: hintText ?? "",
      ),
    );
  }
}
