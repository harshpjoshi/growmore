import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/infrastructure/commans/image_constants.dart';
import 'package:growmore/ui/screens/login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

      Future.delayed(Duration(seconds: 2),(){

        Navigator.of(context).pushReplacement(
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return LoginScreen();
            },
          ),
        );

      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImageConstants.logo,
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
