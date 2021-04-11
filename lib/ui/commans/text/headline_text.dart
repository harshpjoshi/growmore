import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadlineText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  const HeadlineText(
      {Key key,
       this.text,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.textAlign
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: GoogleFonts.lato(
          textStyle: Theme.of(context).textTheme.display1,
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Colors.black38),
      textAlign: textAlign,
      maxLines: 2,
    );
  }
}
