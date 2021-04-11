import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/image_constants.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Hero(
            tag: "splash",
            child: Image.asset(
              ImageConstants.login,
              width: double.infinity,
              height: 150,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
