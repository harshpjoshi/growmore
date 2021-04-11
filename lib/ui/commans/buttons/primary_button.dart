import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/ui/commans/text/headline_text.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const PrimaryButton({Key key, @required this.onTap, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: HeadlineText(
        text: text,
        color: ColorConstants.white,
        fontSize: 14,
      ),
      style: ButtonStyle(backgroundColor: MyColor()),
    );
  }
}
