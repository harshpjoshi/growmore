import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/ui/commans/buttons/primary_button.dart';
import 'package:growmore/ui/commans/text/headline_text.dart';
import 'package:growmore/ui/commans/textfields/rounded_text_field.dart';

void inQuiryDialog(BuildContext context){

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.circular(8)),
            padding:
            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                HeadlineText(
                  text: "Inquiry Now",
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.accentColor,
                  fontSize: 18,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                RoundedTextField(
                  hintText: "Course name",
                ),
                SizedBox(
                  height: 15,
                ),
                RoundedTextField(
                  hintText: "Message",
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  child: PrimaryButton(
                    text: "Submit",
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        );
      });

}