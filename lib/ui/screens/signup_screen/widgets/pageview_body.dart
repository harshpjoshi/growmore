import 'package:flutter/material.dart';
import 'package:growmore/ui/screens/signup_screen/widgets/signup_page1.dart';
import 'package:growmore/ui/screens/signup_screen/widgets/signup_page2.dart';
import 'package:growmore/ui/screens/signup_screen/widgets/signup_page3.dart';

class PageViewBody extends StatelessWidget {

  final PageController pageController;

  const PageViewBody({Key key, this.pageController}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          SignupPage1(),
          SignUpPage2(),
          SignUpPage3()
        ],
      ),
    );
  }
}
