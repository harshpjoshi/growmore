import 'package:flutter/material.dart';
import 'package:growmore/infrastructure/commans/color_constants.dart';
import 'package:growmore/ui/commans/buttons/primary_button.dart';
import 'package:growmore/ui/screens/home_screen/home_screen.dart';
import 'package:growmore/ui/screens/signup_screen/widgets/create_account_text.dart';
import 'package:growmore/ui/screens/signup_screen/widgets/pageview_body.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  String buttonText = "Next";

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {

      if(_pageController.page == 2){
        buttonText = "Submit";
      }else{
        buttonText = "Next";
      }
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstants.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: ColorConstants.textColor,
          ),
          onPressed: () {

            if(_pageController.page == 0){
              Navigator.pop(context);
            }else if(_pageController.page == 1){
              _pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
            }else if(_pageController.page == 2){
              _pageController.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
            }

          },
        ),
      ),
      body: Column(
        children: [
          CreateAccountText(),
          Expanded(
            child: PageViewBody(
              pageController: _pageController,
            ),
          )
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 45,
        child: PrimaryButton(
          text: buttonText,
          onTap: () {
            if(_pageController.page == 0){
              _pageController.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
            }else if(_pageController.page == 1){
              _pageController.animateToPage(2, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
            }else{
              Navigator.of(context).pushReplacement(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return HomeScreen();
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
